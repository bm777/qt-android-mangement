import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    id: page2
    width: 600
    height: 400
    property bool page1: false

    header: Label {
        text: qsTr("Page 2")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Label {
        text: qsTr("You are on Page 2.")
        anchors.centerIn: parent
    }
    Button {
        text: "click here"
        anchors.horizontalCenter: parent.horizontalCenter
        MouseArea {
            anchors.fill: parent

        }
    }

}
