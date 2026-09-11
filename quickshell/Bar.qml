import Quickshell
import Quickshell.Wayland
import QtQuick
import QtQuick.Shapes
import "./components"

PanelWindow {
    id: barWindow
    property int barHeight: 18
    property int cornerRadius: 12
    property int borderThickness: 6
    property color barColor: Theme.bgMain
    property color borderColor: Theme.bgMain
    color: "transparent"
    anchors.bottom: true
    anchors.left: true
    anchors.right: true
    implicitHeight: borderThickness + barHeight + cornerRadius
    exclusiveZone: borderThickness + barHeight

    Item {
        anchors.fill: parent

        Rectangle {
            id: borderStrip
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            height: barWindow.borderThickness
            color: barWindow.borderColor
            z: 0
        }

        Rectangle {
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.left: parent.left
            anchors.right: parent.right
            height: barWindow.borderThickness + barWindow.barHeight
            color: barWindow.borderColor
            z: 1
        }

        ConcaveCurves {
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.bottomMargin: barWindow.borderThickness + barWindow.barHeight
            radius: barWindow.cornerRadius
            color: barWindow.barColor
            isTop: false
            z: 1
        }

        ConcaveCurves {
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.bottomMargin: barWindow.borderThickness + barWindow.barHeight
            radius: barWindow.cornerRadius
            color: barWindow.barColor
            isTop: false
            mirrored: true
            z: 1
        }
    }
}