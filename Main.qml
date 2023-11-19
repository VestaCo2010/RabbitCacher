import QtQuick
import QtQuick.Controls
import QtQuick.Window

Window {
    width: 900
    height: 700
    visible: true
    title: qsTr("Rabbit Cacher")

    component Ourdelegate: Rectangle {
        width: 70
        height: 100
        radius: 8
        border.color: "lightGray"

        property string title: ""
        property int count: 0

        Label {
            text: title
            font.bold: true
            font.pixelSize: 18
            anchors { horizontalCenter: parent.horizontalCenter; top: parent.top; topMargin: 16 }
        }

        Label {
            height: 32
            text: count
            font.pixelSize: 16
            anchors { horizontalCenter: parent.horizontalCenter; top: parent.top; topMargin: 55 }
        }

    }

    Column {
        anchors.centerIn: parent
        spacing: 24

        Row {
            spacing: 16

            Label {
                height: 24
                font.bold: true
                font.pixelSize: 18
                text: "Cache Size : "
            }


            TextField {
                width: 200
                height: 24
                readOnly: true
                text: "45"
                leftPadding: 16
                font.bold: true
                font.pixelSize: 18
            }
        }

        Row {
            spacing: 16

            Ourdelegate {
                title: "A"
                count: 10
            }

            Ourdelegate {
                title: "B"
                count: 7
            }

            Ourdelegate {
                title: "C"
                count: 23
            }

            Ourdelegate {
                title: "D"
                count: 5
            }

        }
    }
}
