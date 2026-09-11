import Quickshell
import Quickshell.Wayland
import QtQuick
import QtQuick.Shapes
import "./components"

PanelWindow {
    id: barWindow
    property int barHeight: 0
    property int cornerRadius: 12
    property int borderThickness: 6
    property color barColor: Theme.bgMain
    color: "transparent"
    anchors.top: true
    anchors.left: true
    anchors.right: true
    implicitHeight: borderThickness + barHeight + cornerRadius
    exclusiveZone: barHeight
    WlrLayershell.layer: WlrLayer.Top

    Item {
        anchors.fill: parent

        Rectangle {
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            height: barWindow.barHeight
            color: barWindow.borderColor
        }

        ConcaveCurves {
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.topMargin: barWindow.barHeight
            radius: barWindow.cornerRadius
            color: barWindow.barColor
            isTop: true
            z: 1
        }

        ConcaveCurves {
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.topMargin: barWindow.barHeight
            radius: barWindow.cornerRadius
            color: barWindow.barColor
            isTop: true
            mirrored: true
            z: 1
        }
    }
}