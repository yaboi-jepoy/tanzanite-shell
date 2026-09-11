import Quickshell
import QtQuick
import Quickshell.Wayland
import Quickshell.Hyprland

Scope {
    id: root
    property int thickness: 6
    property color borderColor: Theme.fgMain

    Variants {
        model: Quickshell.screens

        Item {
            id: screenRoot
            required property var modelData

            PanelWindow{
                screen: screenRoot.modelData
                anchors { top: true; left: true; right: true }
                implicitHeight: root.thickness
                exclusiveZone: root.thickness
                WlrLayershell.layer: WlrLayer.Bottom
                WlrLayershell.namespace: "quickshell-border-top"
                color: Theme.bgMain
            }

            PanelWindow{
                screen: screenRoot.modelData
                anchors { bottom: true; left: true; right: true }
                implicitHeight: root.thickness
                exclusiveZone: root.thickness
                WlrLayershell.layer: WlrLayer.Bottom
                WlrLayershell.namespace: "quickshell-border-bottom"
                color: Theme.bgMain
            }

            PanelWindow{
                screen: screenRoot.modelData
                anchors { bottom: true; top: true; right: true }
                implicitWidth: root.thickness
                exclusiveZone: root.thickness
                WlrLayershell.layer: WlrLayer.Bottom
                WlrLayershell.namespace: "quickshell-border-right"
                color: Theme.bgMain
            }
            
            PanelWindow{
                screen: screenRoot.modelData
                anchors { bottom: true; left: true; top: true }
                implicitWidth: root.thickness
                exclusiveZone: root.thickness
                WlrLayershell.layer: WlrLayer.Bottom
                WlrLayershell.namespace: "quickshell-border-left"
                color: Theme.bgMain
            }
        }
    }
}