import QtQuick 2.0

Item {
    id: root
    width: 100
    height: 100

    BorderImage {
        horizontalTileMode: BorderImage.Repeat
        verticalTileMode: BorderImage.Repeat
        source: "img/box.png"
        anchors.fill: parent
        border.left: 46; border.top: 46
        border.right: 46; border.bottom: 46
    }

}
