import QtQuick 2.0
import "week"

Item {
    id: root
    anchors.fill: parent

    Rectangle {
        anchors.fill: parent
        color: "#4efff2b4"
    }


    Branch {
        id: branch
        enabled: false
        y: parent.height * 0.04
        width: root.width * 0.7
        height: root.height * 0.07
        text: "WEEKS"

    }
   Header{
       id: header
       width: parent.width * 0.8
       height: parent.height * 0.04
       y: branch.y + branch.height * 1.8
       anchors.horizontalCenter: parent.horizontalCenter
   }
}
