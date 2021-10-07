import QtQuick 2.0
//import QtQuick.Controls 2.15
//import QtGraphicalEffects 1.0

AnimatedImage {
    id: animation
    width: parent.width
    height: parent.height
    anchors.centerIn: parent
    source: "gamedata/textures/_lain_spin.gif"
    /*
    OpacityAnimator {
        target: animation
        from: 1
        to: 0
        duration: 30000
        running: true
    }
    */
}
