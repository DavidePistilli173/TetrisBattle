import QtQuick 2.15

Item {
    id: root

    Text {
        id: gameTitle
        text: "Tetris4U"
        font.pointSize: 80
        color: "#a020eb"
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Column {
        spacing: 30
        anchors.topMargin: 40
        anchors.top: gameTitle.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        height: parent.height
        width: parent.width

        MenuButton {
            id: newGameButton
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width / 4
            height: parent.height / 6
            label: "NEW GAME"
        }

        MenuButton {
            id: resumeButton
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width / 4
            height: parent.height / 6
            label: "RESUME"
            enabled: false
        }

        MenuButton {
            id: optionsButton
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width / 4
            height: parent.height / 6
            label: "OPTIONS"
        }

        MenuButton {
            id: exitButton
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width / 4
            height: parent.height / 6
            label: "EXIT"

            onClick: {
                Qt.quit()
            }
        }
    }
}
