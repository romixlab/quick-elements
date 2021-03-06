import QtQuick 2.0

Item {
    id: root
    width: 29
    height: 31
    clip: true
    property int minimumValue: 0
    property int maximumValue: 100
    property int value: minimumValue

    Image { // height 129 * 32
        source: "img/knob.png"
        id: knobImg
    }

    onValueChanged: {
        var percent = value / (maximumValue - minimumValue)
        var idx = Math.round(percent * 128)
        knobImg.y = -idx * 32.005
    }

    MouseArea {
        anchors.fill: parent
        property int yStart
        onPressed: yStart = mouseY
        onMouseYChanged: {
            value += yStart - mouseY
            yStart = mouseY
            if (value > maximumValue)
                value = maximumValue
            if (value < minimumValue)
                value = minimumValue
        }
    }
}
