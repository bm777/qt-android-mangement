import QtQuick 2.0

Item {

    id: root
    width: parent.width * 0.97
    height: parent.height * 0.45
    property bool week_clicked: week.clicked
    property bool calendar_clicked: calendar.clicked

    Rectangle {
        anchors.fill: parent
        color: "transparent"
        border.color: "lightblue"
        border.width: 2
    }

    Branch {
        id: week
        y: root.height * 0.15
        text: "WEEKS"
        MouseArea {
            anchors.fill: parent
            onClicked: root.week_clicked = true
        }
    }
    Branch {
        id: calendar
        y: root.height * 0.5
        text: "CALENDAR"
        MouseArea {
            anchors.fill: parent
            onClicked: root.calendar_clicked = true
        }
    }

}
