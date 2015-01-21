import QtQuick 2.0

Item {
    id: root
    property double intensity: 0.5
    property bool dimmable: true
    property double ratio: width / 128
    width: 128; height: 230 * ratio

    Image {
        id: lamp_img
        source: "img/lamp.png"
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
    }

    Item {
        id: lightItem
        width: root.width
        anchors.bottom: parent.bottom
        height: (parent.height - 74 * ratio) * intensity + 74 * ratio
        clip: true
        Image {
            id: lightImg
            anchors.bottom: parent.bottom
            width: parent.width
            fillMode: Image.PreserveAspectFit
            source: "img/lamp-light.png"
        }
    }



    MouseArea {
        id: mouse
        anchors.fill: parent
        onMouseYChanged: {
            if (!dimmable) return
            intensity = (156 * ratio - mouseY) / (156 * ratio)
            if (intensity < 0) intensity = 0
            if (intensity > 1) intensity = 1
            console.log(intensity)
        }
        onClicked: {
            if (dimmable) return
            intensity = intensity > 0.0 ? 0.0 : 1.0
        }
    }
}
