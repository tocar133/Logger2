#ifndef SENSOR_H
#define SENSOR_H

#include <QObject>
#include <QList>

typedef QList<float> DataList;

class Sensor : public QObject {
    Q_OBJECT
    Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
    Q_PROPERTY(float value READ value WRITE setValue NOTIFY valueChanged)
    Q_PROPERTY(DataList data READ data NOTIFY dataChanged)

    QString m_name = "UNNAMED";
    float m_value;
    DataList m_data;

public:
    Sensor(QString name);
    QString name();
    float value();
    DataList data();

    void setName(QString name);
    void setValue(float value);
    //Q_INVOKABLE int addPerson(QString vorname,QString nachname,QString email, QString bild, float geld, int kaffetassen);

signals:
    void nameChanged();
    void valueChanged();
    void dataChanged();
};

#endif // SENSOR_H
