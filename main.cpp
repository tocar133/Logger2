#include <QCoreApplication>
#include <QQmlApplicationEngine>
#include <QApplication>
#include "sensorliste.h"
#include "sensor.h"
#include <QQmlContext>


int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QScopedPointer<QQmlApplicationEngine> engine(new QQmlApplicationEngine);

    qmlRegisterType<Sensor>("Sensor",1,1,"Sensor");

    Sensorliste* sensorliste(new Sensorliste());
    engine->rootContext()->setContextProperty("sensorliste",sensorliste);

    engine->addImportPath(":/");
    engine->load(QUrl("qrc:/Main.qml"));

    return app.exec();
}
