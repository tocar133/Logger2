import QtQuick
import QtQuick.Controls

ApplicationWindow {
    id: oben
    width: 1920
    height: 1080
    visible: true
    title: "Data Logger"
    color: "white"

    Column {
        anchors.fill: parent
        spacing: 20

        ButtonBar {
            id: buttonBar
            height: parent.height / 14
        }

        Row {
            width: parent.width
            height: oben.height - buttonBar.height
            Rectangle {
                id: listview
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                width: 180
                color: "white"

                ListView {
                    id: list
                    anchors.fill: parent
                    spacing: 10
                    delegate: SensorSelection { }
                    model: ListModel {
                        ListElement {
                            name: "Sensor 1"
                        }
                        ListElement {
                            name: "Sensor 2"
                        }
                        ListElement {
                            name: "Sensor 3"
                        }
                        ListElement {
                            name: "Sensor 4"
                        }
                    }
                }
            }

            Rectangle {
                id: graphRectangle
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                width: parent.width - listview.width

                Graph {
                    title: "Messwerte"
                    titleFont.pointSize: 16
                    legend.font.pointSize: 14
                }
            }
        }
    }
}
