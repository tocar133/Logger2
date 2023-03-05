#ifndef SENSORLISTE_H
#define SENSORLISTE_H

#include <QObject>
#include <QList>
#include "sensor.h"

typedef QList<Sensor*> SensorListe;

class Sensorliste : public QObject {
    Q_OBJECT
    Q_PROPERTY(SensorListe sensorenListe READ sensorenListe NOTIFY sensorenListeChanged)

    SensorListe m_liste;

public:
    Sensorliste();

    Q_INVOKABLE void addSensor(QString vorname);
    SensorListe sensorenListe();

signals:
    void sensorenListeChanged();
};


#endif // SENSORLISTE_H
