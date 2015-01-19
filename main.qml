import QtQuick 2.2
import QtQuick.Window 2.1

Window {
    visible: true
    width: 360
    height: 360
    color: "gray"

    Lamp {
        x: 50
        y: 50
       // width: 64
        intensity: 0.4
        dimmable: false
    }
}
