import QtQuick 2.0

Item {
    id: root
    width: parent.width * 0.7
    height: parent.height * 0.15
    anchors.horizontalCenter: parent.horizontalCenter
    property string text: "WEEKS"
    property string f: "Courier New"
    property real size: 17
    property bool clicked: false

    Rectangle {
        id: first
        height: parent.height
        width: parent.width * 0.1
        color: "transparent"
        border.color: "#4285f4"
        border.width: 1
    }

    Rectangle {
        x: first.width / 2
        width: parent.width * 0.9
        height: parent.height * 0.8
        anchors.verticalCenter: parent.verticalCenter
        color: "#4285f4"

        Text {
            text: root.text
            font {  family: f; pointSize: size}
            anchors.centerIn: parent
            color: "white"

        }
    }
    MouseArea {
        anchors.fill: parent
        onClicked: root.clicked = true
    }
}
