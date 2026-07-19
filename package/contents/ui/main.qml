// SPDX-License-Identifier: GPL-3.0-or-later
// Plasma adaptation copyright (C) 2026 digyear
// Animation frames originate from the Parrot OS parrot6 Plymouth theme.

import QtQuick 2.15
import org.kde.plasma.plasmoid 2.0

WallpaperItem {
    id: root

    Rectangle {
        anchors.fill: parent
        color: "#000000"

        QtObject {
            id: frameCounter
            property int frame: 0
        }

        Timer {
            interval: 50
            running: true
            repeat: true
            onTriggered: frameCounter.frame = (frameCounter.frame + 1) % 33
        }

        Image {
            anchors.centerIn: parent
            source: Qt.resolvedUrl("frames/progress-" + frameCounter.frame + ".png")
            asynchronous: false
            cache: false
            smooth: false
            mipmap: false
            fillMode: Image.PreserveAspectFit
            sourceSize.width: 600
            sourceSize.height: 338
            width: Math.min(600, parent.width * 0.42, parent.height * 0.62 * 600 / 338)
            height: width * 338 / 600
        }
    }
}
