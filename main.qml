import QtQuick 2.2
import QtQuick.Window 2.1
import "GMS" as GMS

Window {
    visible: true
    width: 600
    height: 360
    color: "gray"

    Background {
        id: background
        anchors.fill: parent
        style: "noise"
    }
    Component {
        id: bg_select_button
        Item {
            width: 100
            height: 20
            GMS.Label { text: name; glow: true }
            GMS.Button { anchors.right: parent.right; onClicked: background.style = name }
        }
    }
    Box {
        x: 15; y: 15
        width: 150; height: 180
        Segment14 {
            text: " -BG- "; size: 22
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top; anchors.topMargin: 5
        }

        ListView {
            anchors.fill: parent
            anchors.leftMargin: 25
            anchors.topMargin: 40
            delegate: bg_select_button
            model: ListModel {
                ListElement { name: "brushed" }
                ListElement { name: "carbon" }
                ListElement { name: "dust" }
                ListElement { name: "grunge" }
                ListElement { name: "noise" }
                ListElement { name: "space" }
            }
        }
    }


}
