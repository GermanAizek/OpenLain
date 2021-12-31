import QtQuick 2.0

Item {
    anchors.fill: parent
    Video {
        id: anim_loading
        width: parent.width; height: parent.height
        source: "gamedata/textures/anim_drugs.webm"
        focus: true
        autoPlay: true
    }
    Text {
        anchors{top: anim_loading.bottom}
        text: qsTr("make me sad")
        color: "grey"
    }
}
