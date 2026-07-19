// SPDX-License-Identifier: GPL-3.0-or-later

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import org.kde.kirigami 2.20 as Kirigami

ColumnLayout {
    id: root

    // Supplied by Plasma's wallpaper appearance KCM.
    property var parentLayout

    spacing: Kirigami.Units.largeSpacing

    Label {
        Layout.fillWidth: true
        text: qsTr("Live preview")
        font.bold: true
    }

    Rectangle {
        id: preview
        Layout.fillWidth: true
        Layout.preferredHeight: Math.min(420, Math.max(240, width * 9 / 16))
        color: "#000000"
        radius: Kirigami.Units.smallSpacing
        clip: true

        QtObject {
            id: previewCounter
            property int frame: 0
        }

        Timer {
            interval: 50
            running: preview.visible
            repeat: true
            onTriggered: previewCounter.frame = (previewCounter.frame + 1) % 33
        }

        Image {
            anchors.centerIn: parent
            source: Qt.resolvedUrl("frames/progress-" + previewCounter.frame + ".png")
            asynchronous: false
            cache: false
            smooth: false
            mipmap: false
            fillMode: Image.PreserveAspectFit
            sourceSize.width: 600
            sourceSize.height: 338
            width: Math.min(600, parent.width * 0.72, parent.height * 0.72 * 600 / 338)
            height: width * 338 / 600
        }

        Rectangle {
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            height: previewCaption.implicitHeight + Kirigami.Units.largeSpacing
            color: "#99000000"

            Label {
                id: previewCaption
                anchors.centerIn: parent
                text: qsTr("Parrot Lock Animation · 33 frames · 20 FPS")
                color: "white"
            }
        }
    }

    Label {
        Layout.fillWidth: true
        text: qsTr("This animation is ready to use. There are no additional settings.")
        wrapMode: Text.WordWrap
        opacity: 0.8
    }

    Item {
        Layout.fillHeight: true
    }
}
