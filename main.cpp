#include <QCoreApplication>
#include <QQmlApplicationEngine>
#include <QApplication>

QT_USE_NAMESPACE

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QScopedPointer<QQmlApplicationEngine> engine(new QQmlApplicationEngine);

    engine->addImportPath(":/");
    engine->load(QUrl("qrc:/Main.qml"));

    return app.exec();
}
