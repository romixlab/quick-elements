import QtQuick 2.0

Item {
    id: root
    property alias style: root.state
    state: "brushed"

    Image {
        id: page
        fillMode: Image.Tile
        anchors.fill: parent
    }
    states: [
        State {
            name: "brushed"
            PropertyChanges { target: page; source: "img/background/brushed.jpg"; }
        },
        State {
            name: "carbon"
            PropertyChanges { target: page; source: "img/background/carbon.jpg"; }
        },
        State {
            name: "dust"
            PropertyChanges { target: page; source: "img/background/dust.jpg"; }
        },
        State {
            name: "grunge"
            PropertyChanges { target: page; source: "img/background/grunge.jpg"; }
        },
        State {
            name: "noise"
            PropertyChanges { target: page; source: "img/background/noise.jpg"; }
        },
        State {
            name: "space"
            PropertyChanges { target: page; source: "img/background/space.jpg"; }
        }
    ]
}
