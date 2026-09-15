import Quickshell
import QtQuick
import QtQuick.Layouts
import "./widgets" as Widgets

PanelWindow {
    id: root
    required property var modelData
    screen: root.modelData

    property var borderRadius: 8
    property var borderColor: Theme.bgMain
    property var borderWidth: 1
    property var sectionColor: Theme.fgMain
    
    anchors {
        bottom: true
        left: true
        right: true
    }

    implicitHeight: 25
    color: Theme.bgMain
    
    // Right side
    RowLayout {
        anchors.fill: parent
        spacing: 10

        Item {
            Layout.fillWidth: true
        }

        Rectangle {
            id: systemSection
            Layout.fillHeight: true
            implicitWidth: systemContent.implicitWidth + 16
            
            RowLayout {
                id: systemContent
                anchors.centerIn: parent
                spacing: 4

                Widgets.Network {}
                Widgets.Battery {}
                Widgets.Sound {}
            }
        }

        Rectangle {
            id: clockSection
            // color: sectionColor
            // border.color: borderColor
            // border.width: borderWidth
            // radius: borderRadius

            Layout.fillHeight: true
            implicitWidth: timeContent.implicitWidth + 16

            RowLayout{
                id: timeContent
                anchors.centerIn: parent

                Widgets.Clock {}
            }
        }
    }

}