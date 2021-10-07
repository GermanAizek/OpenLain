import QtQuick 2.12
import QtQuick.Window 2.12
import QtMultimedia 5.15
//import QtQuick3D

//import "DatabaseExplorer"

Window {
    //width: Screen.width; height: Screen.height
    height: 2400/4; width: 1080/4
    visible: true
    title: qsTr("Lain Iwakura")
    //database_explorer { id: db_explorer; visible: true}
    Video {
        id: video
        width: parent.width; height: parent.height
        source: "gamedata/textures/videoplayback.webm"
        focus: true
        autoPlay: true
        Flickable {
            id: lain_control_x
            anchors.fill: parent
            flickableDirection: Flickable.HorizontalFlick
            onFlickStarted: {
                if (horizontalVelocity < 0) {
                    console.log("swiped right")
                    video.play()
                }
                if (horizontalVelocity > 0) {
                    console.log("swiped left")
                }
            }
            boundsMovement: Flickable.StopAtBounds
            pressDelay: 0
            Flickable {
                id: lain_control_y
                anchors.fill: parent
                flickableDirection: Flickable.VerticalFlick
                onFlickStarted: {
                    if (verticalVelocity > 0) {
                        console.log("swiped up")
                    }
                    if (verticalVelocity < 0) {
                        console.log("swiped down")
                    }
                }
                boundsMovement: Flickable.StopAtBounds
                pressDelay: 0
            }
        }

        /*
        Model {
            source: "#Sphere"
            materials: [ PrincipledMaterial {
                    baseColorMap: Texture {
                        source: "madewithqt.png"
                        scaleU: 4.0
                        scaleV: 4.0
                    }
                }
            ]
        }
        */
        AnimatedImage {
            id: lain
            visible: false
            anchors{bottom: parent.bottom}
            width: parent.width / 0.5
            height: parent.height / 0.9
            anchors.centerIn: parent
            source: "gamedata/textures/_lain_spin.gif"
            playing: true
        }
    }
}
