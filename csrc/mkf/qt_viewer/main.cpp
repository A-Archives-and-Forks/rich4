#include <QApplication>
#include <QMainWindow>
#include <QSplitter>
#include <QTreeView>
#include <QTextEdit>
#include <QTableView>
#include <QImage>
#include <QPixmap>
#include <QLabel>
#include <QScrollArea>
#include <QHeaderView>
#include <QFileDialog>
#include <QMessageBox>
#include <QMenuBar>
#include <QStatusBar>
#include <QAbstractItemModel>
#include <QModelIndex>
#include <QFileInfo>
#include <QByteArray>
#include <QBuffer>
#include <QFile>
#include <QAction>
#include <QHBoxLayout>
#include <QVBoxLayout>
#include <QPushButton>
#include <QSpinBox>
#include <QToolBar>
#include <QVariant>
#include <QList>
#include <QPalette>
#include <QStandardItemModel>
#include <QStandardItem>

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <cstdint>
#include <algorithm>

#include "mkf_lib.h"

extern "C" {
    void mkf_decompress(void *dst, const void *src, size_t bufsz);
}

// ==================== MkfTreeModel ====================

static mkf_node* toNode(const QModelIndex& index)
{
    return index.isValid() ? static_cast<mkf_node*>(index.internalPointer()) : nullptr;
}

class MkfTreeModel : public QAbstractItemModel {
public:
    explicit MkfTreeModel(mkf_lib* lib, QObject* parent = nullptr)
        : QAbstractItemModel(parent), lib_(lib)
    {
        root_ = mkf_get_root(lib);
    }

    ~MkfTreeModel() override
    {
        mkf_close(lib_);
    }

    QModelIndex index(int row, int column, const QModelIndex& parent = {}) const override
    {
        if (!hasIndex(row, column, parent)) return {};
        mkf_node* p = toNode(parent);
        if (!p) {
            if (row == 0 && root_) return createIndex(0, 0, root_);
            return {};
        }
        mkf_node* child = mkf_node_get_child(p, row);
        return child ? createIndex(row, column, child) : QModelIndex();
    }

    QModelIndex parent(const QModelIndex& child) const override
    {
        mkf_node* node = toNode(child);
        if (!node || node == root_) return {};
        mkf_node* p = mkf_node_get_parent(node);
        if (!p) return {};
        if (p == root_) return createIndex(0, 0, root_);
        mkf_node* gp = mkf_node_get_parent(p);
        if (!gp) return {};
        int row = childRow(gp, p);
        return createIndex(row, 0, p);
    }

    int rowCount(const QModelIndex& parent = {}) const override
    {
        mkf_node* p = toNode(parent);
        if (!p) return root_ ? 1 : 0;
        return mkf_node_get_child_count(p);
    }

    int columnCount(const QModelIndex& = {}) const override
    {
        return 1;
    }

    QVariant data(const QModelIndex& index, int role = Qt::DisplayRole) const override
    {
        if (!index.isValid()) return {};
        mkf_node* node = toNode(index);
        if (!node) return {};
        if (role == Qt::DisplayRole) {
            return QString::fromUtf8(mkf_node_get_label(node));
        }
        return {};
    }

    bool hasChildren(const QModelIndex& parent = {}) const override
    {
        mkf_node* p = toNode(parent);
        if (!p) return root_ ? true : false;
        return mkf_node_is_expandable(p) ? true : false;
    }

    bool canFetchMore(const QModelIndex& parent) const override
    {
        mkf_node* node = toNode(parent);
        if (!node) return false;
        return mkf_node_is_expandable(node) && !mkf_node_is_expanded(node);
    }

    void fetchMore(const QModelIndex& parent) override
    {
        mkf_node* node = toNode(parent);
        if (!node || mkf_node_is_expanded(node)) return;

        int old_count = mkf_node_get_child_count(node);
        mkf_node_set_expanded(node, 1);
        int new_count = mkf_node_get_child_count(node);

        if (new_count > old_count) {
            beginInsertRows(parent, old_count, new_count - 1);
            endInsertRows();
        }
    }

    mkf_lib* lib() const { return lib_; }

private:
    static int childRow(mkf_node* parent, mkf_node* child)
    {
        int n = mkf_node_get_child_count(parent);
        for (int i = 0; i < n; i++) {
            if (mkf_node_get_child(parent, i) == child) return i;
        }
        return -1;
    }

    mkf_lib* lib_;
    mkf_node* root_;
};

// ==================== HexViewer ====================

class HexViewer : public QTextEdit {
public:
    HexViewer(QWidget* parent = nullptr) : QTextEdit(parent) {
        setReadOnly(true);
        setFont(QFont("Courier", 10));
    }

    void setData(const QByteArray& data, uint32_t offset = 0) {
        clear();

        if (data.isEmpty()) {
            setPlainText("No data available");
            return;
        }

        QString hex_dump;

        for (int i = 0; i < data.size(); i += 16) {
            hex_dump += QString("%1: ").arg(offset + i, 8, 16, QChar('0')).toUpper();

            QString hex_part;
            QString ascii_part;

            for (int j = 0; j < 16; ++j) {
                if (i + j < data.size()) {
                    uint8_t byte = static_cast<uint8_t>(data[i + j]);
                    hex_part += QString("%1 ").arg(byte, 2, 16, QChar('0')).toUpper();

                    if (byte >= 32 && byte < 127) {
                        ascii_part += QChar(byte);
                    } else {
                        ascii_part += ".";
                    }
                } else {
                    hex_part += "   ";
                    ascii_part += " ";
                }

                if (j == 7) {
                    hex_part += " ";
                }
            }

            hex_dump += hex_part + " " + ascii_part + "\n";
        }

        setPlainText(hex_dump);
    }
};

// ==================== ImagePreviewer ====================

class ImagePreviewer : public QWidget {
    Q_OBJECT

public:
    ImagePreviewer(QWidget* parent = nullptr) : QWidget(parent) {
        setBackgroundRole(QPalette::Dark);
        setAutoFillBackground(true);

        QVBoxLayout* mainLayout = new QVBoxLayout(this);
        mainLayout->setContentsMargins(0, 0, 0, 0);

        QWidget* controls = new QWidget(this);
        QHBoxLayout* controlLayout = new QHBoxLayout(controls);
        controlLayout->setContentsMargins(5, 5, 5, 5);

        QPushButton* zoomInBtn = new QPushButton("+", controls);
        QPushButton* zoomOutBtn = new QPushButton("-", controls);
        QPushButton* resetBtn = new QPushButton("Reset", controls);

        controlLayout->addWidget(zoomInBtn);
        controlLayout->addWidget(zoomOutBtn);
        controlLayout->addWidget(resetBtn);
        controlLayout->addStretch();

        scrollArea = new QScrollArea(this);
        scrollArea->setBackgroundRole(QPalette::Dark);
        imageLabel = new QLabel(scrollArea);
        imageLabel->setAlignment(Qt::AlignCenter);
        imageLabel->setBackgroundRole(QPalette::Base);
        imageLabel->setAutoFillBackground(true);
        scrollArea->setWidget(imageLabel);
        scrollArea->setWidgetResizable(true);

        mainLayout->addWidget(controls);
        mainLayout->addWidget(scrollArea);

        connect(zoomInBtn, &QPushButton::clicked, this, &ImagePreviewer::zoomIn);
        connect(zoomOutBtn, &QPushButton::clicked, this, &ImagePreviewer::zoomOut);
        connect(resetBtn, &QPushButton::clicked, this, &ImagePreviewer::resetZoom);

        scaleFactor = 1.0;
    }

    void setImageData(const QByteArray& data, int width, int height, int bpp = 8) {
        if (data.isEmpty() || width <= 0 || height <= 0) {
            imageLabel->clear();
            return;
        }

        QImage img;

        if (bpp == 16) {
            img = QImage(width, height, QImage::Format_RGB16);
            if (data.size() >= width * height * 2) {
                const uint16_t* pixels = reinterpret_cast<const uint16_t*>(data.constData());

                for (int y = 0; y < height; ++y) {
                    for (int x = 0; x < width; ++x) {
                        uint16_t pixel = pixels[y * width + x];
                        uint8_t r = ((pixel >> 11) & 0x1F) * 255 / 31;
                        uint8_t g = ((pixel >> 5) & 0x3F) * 255 / 63;
                        uint8_t b = (pixel & 0x1F) * 255 / 31;
                        img.setPixel(x, y, qRgb(r, g, b));
                    }
                }
            }
        } else {
            img = QImage(width, height, QImage::Format_Grayscale8);
            size_t data_size = static_cast<size_t>(data.size());
            size_t required_size = static_cast<size_t>(width * height);
            size_t copy_size = std::min(data_size, required_size);
            if (copy_size > 0) {
                memcpy(img.bits(), data.constData(), copy_size);
            }
        }

        originalPixmap = QPixmap::fromImage(img);
        resetZoom();
    }

private slots:
    void zoomIn() {
        scaleFactor *= 1.25;
        updateImage();
    }

    void zoomOut() {
        scaleFactor *= 0.8;
        updateImage();
    }

    void resetZoom() {
        scaleFactor = 1.0;
        updateImage();
    }

private:
    void updateImage() {
        if (originalPixmap.isNull()) {
            imageLabel->clear();
            return;
        }

        QSize size = originalPixmap.size() * scaleFactor;
        imageLabel->setPixmap(originalPixmap.scaled(size, Qt::KeepAspectRatio, Qt::SmoothTransformation));
    }

    QScrollArea* scrollArea;
    QLabel* imageLabel;
    QPixmap originalPixmap;
    double scaleFactor;
};

// ==================== MainWindow ====================

class MainWindow : public QMainWindow {
    Q_OBJECT

public:
    MainWindow(QWidget* parent = nullptr) : QMainWindow(parent), treeModel_(nullptr) {
        setupUI();
        setWindowTitle("MKF File Viewer");
        resize(1200, 800);
    }

private slots:
    void openFile() {
        QString filepath = QFileDialog::getOpenFileName(this, "Open MKF File", "", "MKF Files (*.mkf)");
        if (filepath.isEmpty()) return;

        mkf_lib* lib = mkf_open(filepath.toUtf8().constData());
        if (!lib) {
            QMessageBox::critical(this, "Error", "Failed to load MKF file");
            return;
        }

        if (treeModel_) {
            delete treeModel_;
        }

        treeModel_ = new MkfTreeModel(lib, this);
        treeView->setModel(treeModel_);

        connect(treeView->selectionModel(), &QItemSelectionModel::currentChanged,
                this, &MainWindow::treeSelectionChanged);

        connect(treeView, &QTreeView::expanded, this, [this](const QModelIndex& index) {
            if (index == treeView->currentIndex()) {
                updatePropertyTable(index);
                updateHexViewer(index);
                updateImagePreview(index);
            }
        });

        treeView->expandToDepth(0);

        statusBar()->showMessage(QString("Loaded: %1").arg(filepath));
    }

    void extractSelected() {
        QModelIndex index = treeView->selectionModel()->currentIndex();
        if (!index.isValid()) return;

        QString filepath = QFileDialog::getSaveFileName(this, "Extract File");
        if (filepath.isEmpty()) return;

        QByteArray data = getDataForIndex(index);
        if (data.isEmpty()) {
            QMessageBox::warning(this, "Warning", "No data to extract");
            return;
        }

        QFile file(filepath);
        if (file.open(QIODevice::WriteOnly)) {
            file.write(data);
            file.close();
            statusBar()->showMessage(QString("Extracted to: %1").arg(filepath));
        }
    }

    void findNextSPRSMP() {
        if (!treeModel_) {
            statusBar()->showMessage("No file loaded");
            return;
        }
        int startIndex = 0;
        QModelIndex current = treeView->selectionModel()->currentIndex();
        mkf_node* curNode = toNode(current);

        if (curNode) {
            while (curNode && mkf_node_get_type(curNode) != MKF_NODE_RESOURCE) {
                curNode = mkf_node_get_parent(curNode);
            }
            if (curNode) {
                mkf_node* root = mkf_get_root(treeModel_->lib());
                int n = mkf_node_get_child_count(root);
                for (int i = 0; i < n; i++) {
                    if (mkf_node_get_child(root, i) == curNode) {
                        startIndex = i + 1;
                        break;
                    }
                }
            }
        }

        mkf_lib* lib = treeModel_->lib();
        int total = mkf_get_resource_count(lib);

        for (int i = startIndex; i < total; ++i) {
            if (!mkf_check_spr_smp(lib, i)) continue;

            QModelIndex rootIdx = treeModel_->index(0, 0);
            QModelIndex resIdx = treeModel_->index(i, 0, rootIdx);
            if (resIdx.isValid()) {
                treeView->setCurrentIndex(resIdx);
                treeView->expand(resIdx);
                statusBar()->showMessage(QString("Found SPR/SMP resource at index %1").arg(i));
            }
            return;
        }

        statusBar()->showMessage("No more SPR/SMP resources found");
    }

    void treeSelectionChanged(const QModelIndex& current, const QModelIndex& previous) {
        Q_UNUSED(previous);
        updatePropertyTable(current);
        updateHexViewer(current);
        updateImagePreview(current);
    }

private:
    void setupUI() {
        QSplitter* mainSplitter = new QSplitter(Qt::Horizontal, this);

        QWidget* leftPanel = new QWidget(mainSplitter);
        QVBoxLayout* leftLayout = new QVBoxLayout(leftPanel);

        treeView = new QTreeView(leftPanel);
        treeView->setHeaderHidden(true);
        leftLayout->addWidget(treeView);

        QSplitter* rightSplitter = new QSplitter(Qt::Vertical, mainSplitter);

        propertyTable = new QTableView(rightSplitter);
        propertyModel = new QStandardItemModel(this);
        propertyModel->setHorizontalHeaderLabels({"Property", "Value"});
        propertyTable->setModel(propertyModel);
        propertyTable->horizontalHeader()->setStretchLastSection(true);
        propertyTable->setColumnWidth(0, 200);

        hexViewer = new HexViewer(rightSplitter);

        imagePreviewer = new ImagePreviewer(rightSplitter);

        rightSplitter->addWidget(propertyTable);
        rightSplitter->addWidget(hexViewer);
        rightSplitter->addWidget(imagePreviewer);
        rightSplitter->setSizes({200, 300, 300});

        mainSplitter->addWidget(leftPanel);
        mainSplitter->addWidget(rightSplitter);
        mainSplitter->setSizes({300, 900});

        setCentralWidget(mainSplitter);

        createMenuBar();
        createToolBar();

        statusBar()->showMessage("Ready");
    }

    void createMenuBar() {
        QMenu* fileMenu = menuBar()->addMenu("&File");
        QAction* openAction = fileMenu->addAction("&Open MKF...");
        openAction->setShortcut(QKeySequence::Open);
        connect(openAction, &QAction::triggered, this, &MainWindow::openFile);

        QAction* extractAction = fileMenu->addAction("&Extract Selected...");
        connect(extractAction, &QAction::triggered, this, &MainWindow::extractSelected);

        fileMenu->addSeparator();

        QAction* exitAction = fileMenu->addAction("E&xit");
        exitAction->setShortcut(QKeySequence::Quit);
        connect(exitAction, &QAction::triggered, this, &QWidget::close);

        QMenu* editMenu = menuBar()->addMenu("&Edit");
        QAction* findAction = editMenu->addAction("&Find Next SPR/SMP");
        findAction->setShortcut(QKeySequence::FindNext);
        connect(findAction, &QAction::triggered, this, &MainWindow::findNextSPRSMP);
    }

    void createToolBar() {
        QToolBar* toolBar = addToolBar("Main");

        QAction* openAction = toolBar->addAction("Open");
        connect(openAction, &QAction::triggered, this, &MainWindow::openFile);

        QAction* extractAction = toolBar->addAction("Extract");
        connect(extractAction, &QAction::triggered, this, &MainWindow::extractSelected);

        QAction* findAction = toolBar->addAction("Find SPR/SMP");
        connect(findAction, &QAction::triggered, this, &MainWindow::findNextSPRSMP);
    }

    QByteArray getDataForIndex(const QModelIndex& index) {
        mkf_node* node = toNode(index);
        if (!node) return {};

        size_t size = 0;
        const void* data = mkf_node_get_data(node, &size);
        if (!data || size == 0) return {};

        return QByteArray(static_cast<const char*>(data), static_cast<int>(size));
    }

    void updatePropertyTable(const QModelIndex& index) {
        propertyModel->removeRows(0, propertyModel->rowCount());

        mkf_node* node = toNode(index);
        if (!node) return;

        mkf_node_type type = mkf_node_get_type(node);

        if (type == MKF_NODE_FILE) {
            addProperty("Type", "MKF File");
        } else if (type == MKF_NODE_RESOURCE) {
            mkf_resource_info info;
            if (mkf_node_get_resource_info(node, &info)) {
                addProperty("Type", "Resource");
                addProperty("File Offset", QString("0x%1").arg(info.file_offset, 8, 16, QChar('0')));
                addProperty("Compressed Size", QString("%1 bytes").arg(info.compressed_size));
                addProperty("Uncompressed Size", QString("%1 bytes").arg(info.uncompressed_size));
                addProperty("Is Compressed", info.is_compressed ? "Yes" : "No");
                addProperty("Is Image Resource", info.image_size != 0 ? "Yes" : "No");
            }
        } else if (type == MKF_NODE_COMPRESSED) {
            mkf_resource_info info;
            if (mkf_node_get_resource_info(node, &info)) {
                addProperty("Type", "Compressed Data");
                addProperty("Compressed Size", QString("%1 bytes").arg(info.compressed_size));
            }
        } else if (type == MKF_NODE_DECOMPRESSED) {
            mkf_resource_info info;
            if (mkf_node_get_resource_info(node, &info)) {
                addProperty("Type", "Decompressed Data");
                addProperty("Uncompressed Size", QString("%1 bytes").arg(info.uncompressed_size));
                if (info.is_spr_smp) {
                    addProperty("SPR/SMP Signature", QString::fromLatin1(info.signature, 4));
                    addProperty("Number of Images", QString::number(info.num_chunks));
                } else {
                    addProperty("Is Expandable", mkf_node_is_expandable(node) ? "Yes" : "No (not SPR/SMP)");
                }
            }
        } else if (type == MKF_NODE_IMAGE) {
            mkf_resource_info resInfo;
            mkf_node_get_resource_info(node, &resInfo);
            mkf_image_info imgInfo;
            if (mkf_node_get_image_info(node, &imgInfo)) {
                addProperty("Type", "Image");
                addProperty("Width", QString::number(imgInfo.width));
                addProperty("Height", QString::number(imgInfo.height));
                addProperty("X Position", QString::number(imgInfo.x));
                addProperty("Y Position", QString::number(imgInfo.y));
                addProperty("Data Size", QString("%1 bytes").arg(imgInfo.gsize));

                int pixelCount = imgInfo.width * imgInfo.height;
                if (pixelCount > 0) {
                    int bpp = (imgInfo.gsize * 8) / pixelCount;
                    addProperty("Bits per Pixel", QString::number(bpp));
                }
            }
        }
    }

    void addProperty(const QString& name, const QString& value) {
        QList<QStandardItem*> items;
        items.append(new QStandardItem(name));
        items.append(new QStandardItem(value));
        propertyModel->appendRow(items);
    }

    void updateHexViewer(const QModelIndex& index) {
        QByteArray data = getDataForIndex(index);
        if (!data.isEmpty()) {
            hexViewer->setData(data);
        } else {
            hexViewer->setPlainText("No data available");
        }
    }

    void updateImagePreview(const QModelIndex& index) {
        mkf_node* node = toNode(index);
        if (!node || mkf_node_get_type(node) != MKF_NODE_IMAGE) {
            imagePreviewer->setImageData(QByteArray(), 0, 0);
            return;
        }

        mkf_image_info info;
        if (!mkf_node_get_image_info(node, &info)) {
            imagePreviewer->setImageData(QByteArray(), 0, 0);
            return;
        }

        size_t size = 0;
        const void* data = mkf_node_get_data(node, &size);
        if (!data || size == 0) {
            imagePreviewer->setImageData(QByteArray(), 0, 0);
            return;
        }

        QByteArray ba(static_cast<const char*>(data), static_cast<int>(size));
        int pixelCount = info.width * info.height;
        int bpp = 8;
        if (pixelCount > 0) {
            bpp = (info.gsize * 8) / pixelCount;
        }

        imagePreviewer->setImageData(ba, info.width, info.height, bpp);
    }

    MkfTreeModel* treeModel_;

    QTreeView* treeView;
    QStandardItemModel* propertyModel;
    QTableView* propertyTable;
    HexViewer* hexViewer;
    ImagePreviewer* imagePreviewer;
};

// ==================== main ====================

int main(int argc, char *argv[]) {
    QApplication app(argc, argv);
    app.setStyle("Fusion");

    MainWindow mainWindow;
    mainWindow.show();

    return app.exec();
}

#include "main.moc"
