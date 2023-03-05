#include "sensorliste.h"

Sensorliste::Sensorliste()
{
    addSensor("Sensor 1");
    addSensor("Sensor 2");
    addSensor("Sensor 3");
    addSensor("Sensor 4");
    addSensor("Sensor 5");
}

SensorListe Sensorliste::sensorenListe() {
    return m_liste;
}

void Sensorliste::addSensor(QString name) {
    Sensor* sensor = new Sensor(name);
    m_liste.push_back(sensor);
    emit sensorenListeChanged();
}
