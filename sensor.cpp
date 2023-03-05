#include "sensor.h"

Sensor::Sensor(QString name)
{
    m_name = name;
    m_value = -999;
}

QString Sensor::name() {
    return m_name;
}
float Sensor::value() {
    return m_value;
}
DataList Sensor::data() {
    return m_data;
}

void Sensor::setName(QString name) {
    if (name == m_name)
        return;
    m_name = name;
    emit nameChanged();
}
void Sensor::setValue(float value) {
    if (value == m_value)
        return;
    m_value = value;
    emit valueChanged();
}
