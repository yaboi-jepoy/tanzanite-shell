import Quickshell
import Quickshell.Services.Pipewire
import QtQuick

Item {
    implicitHeight: label.implicitHeight
    implicitWidth: label.implicitWidth 

    property var sink: Pipewire.defaultAudioSink
    readonly property bool ready: sink && sink.ready
    readonly property bool muted: ready && sink.audio.muted
    readonly property int volume: ready ? Math.round(sink.audio.volume * 100) : 0
    readonly property string icon: {
        if (!ready) return "\udb81\udd81"
        if (muted) return "\udb81\udf5f"
        if (volume < 25) return "\udb81\udd7f"
        if (volume < 70) return "\udb81\udd80"
        return "\udb81\udd7e"
    }
    
    PwObjectTracker{
        objects: [sink]
    }

    Text {
        id: label
        // text: Pipewire.defaultAudioSink.properties["media.name"]
        text: icon
    }
}