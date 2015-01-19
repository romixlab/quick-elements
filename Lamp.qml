import QtQuick 2.0

Item {
    id: root
    property double intensity: 0.5
    property bool dimmable: true
    width: 128; height: 230

    Image {
        id: lamp_img
        source: "img/lamp.png"
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
    }

    Item {
        id: lightItem
        width: root.width
        height: 156 * intensity
        y: 156 - height
        clip: true
        Image {
            id: lightImg
            anchors.bottom: parent.bottom
            //height: 50
            fillMode: Image.PreserveAspectFit
            source: "img/lamp-light.png"
        }
    }



    MouseArea {
        id: mouse
        anchors.fill: parent
        onMouseYChanged: {
            if (!dimmable) return
            intensity = (156 - mouseY) / 156
            if (intensity < 0) intensity = 0
            if (intensity > 1) intensity = 1
        }
        onClicked: {
            if (dimmable) return
            intensity = intensity > 0.0 ? 0.0 : 1.0
        }
    }
}
