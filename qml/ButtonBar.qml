import QtQuick
import QtQuick.Controls

Rectangle {
    id: buttonBar
    width: parent.width
    height: 50
    z:2
    Row {
        id: menu
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 20

        RoundButton {
            id: startStopButton
            text: "Start"
            width: buttonBar.width / 7
            height: buttonBar.height
            radius: width / 10
            font.pointSize: 16
        }
        Column {
            width: buttonBar.width / 7
            height: buttonBar.height
            spacing: 5

            Text {
                text: "Graph time period:"
                font.pointSize: 12
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Row {
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 2
                Rectangle {
                    color: "lightgrey"
                    height: 25
                    width: 60
                    anchors.verticalCenter: sensorCheckBox.verticalCenter
                    TextInput {
                        text: ""
                        font.pointSize: 12
                        anchors.fill: parent
                    }
                }
                ComboBox {
                    height: 25
                    width: 50
                    model: ["sec","min","hr"]
                    font.pointSize: 12
                }
            }

            RoundButton {
                id: timePeriodButton
                text: "Refresh"
                width: 110
                height: parent.height / 3
                radius: width / 10
                font.pointSize: 16
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
        RoundButton {
            id: exportButton
            text: "Export"
            width: buttonBar.width / 7
            height: buttonBar.height
            radius: width / 10
            font.pointSize: 16
        }
        RoundButton {
            id: resetButton
            text: "Reset"
            width: buttonBar.width / 7
            height: buttonBar.height
            radius: width / 10
            font.pointSize: 16
        }
        RoundButton {
            id: graphSettingsButton
            text: "Graph settings"
            width: buttonBar.width / 7
            height: buttonBar.height
            radius: width / 10
            font.pointSize: 16
        }
    }
}
