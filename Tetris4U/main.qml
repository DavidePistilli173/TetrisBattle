import QtQuick 2.15
import QtQuick.Window 2.15

import "qrc:/menu"

Window {
    width: 640
    height: 480
    visible: true
    visibility: "FullScreen"
    title: qsTr("Hello World")

    Rectangle {
        id: background
        anchors.fill: parent
        gradient: Gradient {
            GradientStop {
                color: "#010140"
                position: 0.0
            }
            GradientStop {
                color: "#010130"
                position: 0.5
            }
            GradientStop {
                color: "#010120"
                position: 1.0
            }
        }
    }

    MainMenu {
        id: mainMenu
        anchors.fill: parent
    }
}
