import QtQuick 2.2
import QtQuick.Window 2.1

Window {
    visible: true
    width: 360
    height: 360
    color: "gray"

    Background {
        anchors.fill: parent
        style: "carbon"
    }

    Box {
        width: 100; height: 100
        x: 50; y: 50
        ToggleSwitch {
            anchors.centerIn: parent
        }
    }


}
