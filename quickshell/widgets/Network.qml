import Quickshell
import Quickshell.Networking
import QtQuick

Item {
    implicitHeight: label.implicitHeight
    implicitWidth: label.implicitWidth 
    
    // determine currently active network device
    property var networking: Networking.devices.values
    property var connectedDevice: {
        for (const device of networking) {
            if (device.connected === true) {
                return device
            }
        }
    }
    property var connectedNetwork: connectedDevice.networks.values.find(n => n.connected)

    Text {
        id: label
        // text: (connectedDevice.type === 1) ? "WiFi" : "Ethernet"
        text: {
            if (connectedDevice.type === 1) {
                var signalLevel = Math.round(connectedNetwork.signalStrength * 100)
                // console.log(signalLevel)
                // wifi levels
                if (signalLevel <= 25) {
                    return "\udb82\udd1f"
                }
                if (signalLevel <= 50) {
                    return "\udb82\udd22"
                }
                if (signalLevel <= 75) {
                    return "\udb82\udd25"
                }
                if (signalLevel <= 100) {
                    return "\udb82\udd28"
                }
            } if (connectedDevice.type === 2) {
                // ethernet
                return "\uef44"
            }
            // cross
            return "\uf467"
        }
    }
} 