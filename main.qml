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
        id: bgBox
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

    GMS.GroupBox {
        id: fxBox
        text: "FX Buttons"
        anchors.left: bgBox.right; anchors.leftMargin: 15; y: 15
        width: 110; height: 125
        Grid {
            x: 10; y: 20
            rows: 3; columns: 3
            Repeater {
                model: 9
                GMS.ButtonFX {
                    text: 'A' + index
                    pressed: ! (index % 2)
                }
            }
        }
    }

    Box {
        anchors.left: fxBox.right; y: 15
        anchors.leftMargin: 15
        width: 125
        height: 145
        Segment14 {
            text: ' ' + Math.floor(lamp.intensity * 100) + '% '; size: 22
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top; anchors.topMargin: 5
        }
        Lamp {
            id: lamp
            anchors.horizontalCenter: parent.horizontalCenter
            y: 40
            intensity: 0.7
            width: 48
        }
    }

    Box {
        anchors.top: bgBox.bottom; anchors.topMargin: 15
        x: 15
        width: 300; height: 100
        Row {
            spacing: 10
            anchors.centerIn: parent
            Column {
                spacing: 5
                GMS.Label {
                    text: 'Knob: ' + knob.value
                }
                GMS.Knob {
                    id: knob
                    x: 7
                    value: 47
                }
            }
        }
    }


}
