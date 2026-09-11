pragma Singleton
import QtQuick

QtObject {
    // Determine active theme (set to false for light mode)
    property bool isDark: false

    // =========================================
    // LIGHT THEME (isDark == false)
    // =========================================
    property string lightBgMain: "#FFF0F5"
    property string lightBgAlt: "#FFE4ED"
    property string lightFgMain: "#4A353D"
    property string lightPrimary: "#F3B2C8"
    property string lightAccent: "#FF9EBB"
    property string lightSuccess: "#A3C9A8"
    property string lightWarning: "#F5D79B"
    property string lightDanger: "#E89E9F"

    // =========================================
    // DARK THEME (isDark == true)
    // =========================================
    property string darkBgMain: "#1A1115"
    property string darkBgAlt: "#2D1E24"
    property string darkFgMain: "#FBE4EB"
    property string darkPrimary: "#D77A9A"
    property string darkAccent: "#FF85A8"
    property string darkSuccess: "#8FB996"
    property string darkWarning: "#D9B777"
    property string darkDanger: "#CC7A7B"

    // =========================================
    // DYNAMIC ALIASES (Use these in your components)
    // =========================================
    readonly property string bgMain: isDark ? darkBgMain : lightBgMain
    readonly property string bgAlt: isDark ? darkBgAlt : lightBgAlt
    readonly property string fgMain: isDark ? darkFgMain : lightFgMain
    readonly property string primary: isDark ? darkPrimary : lightPrimary
    readonly property string accent: isDark ? darkAccent : lightAccent
    readonly property string success: isDark ? darkSuccess : lightSuccess
    readonly property string warning: isDark ? darkWarning : lightWarning
    readonly property string danger: isDark ? darkDanger : lightDanger
}