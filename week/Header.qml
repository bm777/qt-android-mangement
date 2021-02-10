import QtQuick 2.0

Rectangle {
    id: root
    property string week: "Week"
    property string month: "Month"
    property string status: "State"
    property string f: "Courier New"
    width: 100; height: 100
    color: "lightgray"
    Text {
        text: root.week
        color: "#777777"
        anchors.verticalCenter: parent.verticalCenter
        font { family: f; pointSize: 9}
        x: root.width * 0.05
    }
    Text {
        text: root.month
        color: "#777777"
        anchors.verticalCenter: parent.verticalCenter
        font { family: f; pointSize: 9}
        x: root.width * 0.38
    }
    Text {
        text: root.status
        color: "#777777"
        anchors.verticalCenter: parent.verticalCenter
        font { family: f; pointSize: 9}
        x: root.width * 0.7
    }
}
