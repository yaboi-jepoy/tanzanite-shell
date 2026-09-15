import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts

// import "widgets"

ShellRoot {
    // render on every screen
    Variants {
        model: Quickshell.screens;
        Bar {}
    }
}