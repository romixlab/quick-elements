import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    id: root
    property string text: ""
    property alias color: text.color
    property alias backcolor: back.color
    property alias size: text.font.pixelSize
    property bool glow: true
    property bool back: true
    width: containter.width
    height: containter.height

    Text {
        id: back
        visible: root.back
        anchors.centerIn: parent
        font.family: segmnent14.name
        text: new Array(root.text.length + 1).join('~')
        font.pointSize: text.font.pointSize
        color: "#333"
    }

    Item {
        id: containter
        anchors.centerIn: parent
        width: text.width + 16
        height: text.height + 16
        Text {
            id: text
            anchors.centerIn: parent
            font.family: segmnent14.name
            text: root.text
            font.pointSize: 48
            color: "orange"
        }
    }

    Glow {
        visible: root.glow
        anchors.fill: containter
        source: containter
        radius: 8
        samples: 32
        color: text.color
        spread: 0.4
        cached: true
    }

    FontLoader {
        id: segmnent14
        source: "fonts/Segment14.otf"
    }
}
