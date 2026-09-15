import Quickshell
import QtQuick
import Quickshell.Services.UPower

Item {
    implicitHeight: label.implicitHeight
    implicitWidth: label.implicitWidth

    Text {
        id: label
        anchors.centerIn: parent
        text: UPower.onBattery ? (Math.round(UPower.displayDevice.percentage * 100) + "%") : "\udb81\udea5"
    }
}