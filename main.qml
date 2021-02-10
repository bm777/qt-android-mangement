import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    visible: true
    width: 400
    height: 800
    title: "SCOOPS"

    Item {
        id: main
        anchors.fill: parent
        visible: dashboard.week_clicked ? false:true && dashboard.calendar_clicked ? false:true
        Dashboard {
            id: dashboard
            visible: true
            anchors.horizontalCenter: parent.horizontalCenter
            y: parent.height * 0.07
        }

        Branch {
            id: account
            y: parent.height * 0.6
            width: dashboard.width * 0.7
            height: dashboard.height * 0.15
            text: "ACCOUNT"
        }

        Button {
            text: "QUIT"
            font {family: Branch.f}
            y: parent.height - height * 2
            anchors.horizontalCenter: parent.horizontalCenter
            contentItem: Text {
                text: parent.text
                color: "#4285f4"
            }
            MouseArea{
                anchors.fill: parent
                onClicked: Qt.quit()
            }
            background: Rectangle {
                color: "transparent"
                border.color: "#4285f4"
            }
        }
    }
    Busy {
        id: busy
        visible: !dashboard.visible
        anchors.centerIn: parent
    }



    // ++++++++++++++++++++++++++++++++++++++++++++++++content
    Week {
        id: week
        visible: false//dashboard.week_clicked
    }








    SequentialAnimation {
            running: !dashboard.visible

            PropertyAnimation {
                target: busy
                property: "visible"
                easing.type: Easing.InOutQuad
                duration: 100 + Math.floor(Math.random() * 500)
                to: "false"
            }
            PropertyAnimation {
                target: week
                property: "visible"
                to: "true"
                duration: 5
                easing.type: Easing.InOutQuad
            }

        }

}
