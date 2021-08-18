import QtQuick 2.15

Item {
    id: root

    readonly property Gradient backgroundGradient: Gradient {
        GradientStop {
            color: "#200160"
            position: 0.0
        }
        GradientStop {
            color: "#200150"
            position: 0.5
        }
        GradientStop {
            color: "#200140"
            position: 1.0
        }
    }

    property string label: ""

    signal click()

    Rectangle {
        id: background
        anchors.fill: parent
        gradient: backgroundGradient
        color: "#200120"
        border.width: 3
        border.color: "#602060"
    }

    Text {
        id: label
        text: root.label
        anchors.centerIn: parent
        color: "#ebebeb"
        font.pointSize: 26
        font.bold: true
    }

    Rectangle {
        id: hoverOverlay
        opacity: 0.2
        visible: false
        anchors.fill: parent
    }

    MouseArea {
        id: mouseHandler
        anchors.fill: parent
        hoverEnabled: true

        onEntered: {
            hoverOverlay.visible = true
        }

        onExited: {
            hoverOverlay.visible = false
        }

        onPressed: {
            background.gradient = null
            background.border.width = 1
            label.font.pointSize = 24
        }

        onReleased: {
            background.gradient = backgroundGradient
            background.border.width = 3
            label.font.pointSize = 26
            click()
        }
    }
}
