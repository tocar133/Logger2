import QtQuick
import QtQuick.Controls

Rectangle {
    id: sensor
    height: 60
    width: list.width
    visible: true
    clip: true
    color: "white"

    function getState() {
        return sensorCheckBox.checkState
    }

    function checkBoxChanged() { console.log(model.name + " " + sensorCheckBox.checkState) }

    Rectangle {
        width: sensor.width - 20
        height: sensor.height
        anchors.horizontalCenter: sensor.horizontalCenter
        border.width: 1
        border.color: "grey"
        radius: width / 15

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if(sensorCheckBox.checkState)
                    sensorCheckBox.checkState = 0
                else
                    sensorCheckBox.checkState = 2
            }
        }

        Column {
            anchors.fill: parent
            Row {
                anchors.horizontalCenter: parent.horizontalCenter
                topPadding: 3

                CheckBox {
                    id: sensorCheckBox
                    checked: false
                    text: ""
                    onCheckStateChanged: sensor.checkBoxChanged()
                    font.pointSize: 14
                }
                Rectangle {
                    color: "lightgrey"
                    height: 25
                    width: 120
                    anchors.verticalCenter: sensorCheckBox.verticalCenter
                    TextInput {
                        text: model.name
                        font.pointSize: 12
                        anchors.fill: parent
                    }
                }
            }
            Text {
                id: sensorValue
                text: qsTr("no Value")
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 14
            }
        }
    }
}
