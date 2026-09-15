import Quickshell
import QtQuick

Item {
    implicitHeight: label.implicitHeight
    implicitWidth: label.implicitWidth

    SystemClock {
        id: clock
        precision: SystemClock.Minutes
    }

    Text {
        id: label
        anchors.centerIn: parent
        text: Qt.formatDateTime(clock.date, "hh:mm A")
    }
}