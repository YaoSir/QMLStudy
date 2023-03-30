import QtQuick
import QtQuick.Window

Window {
    width: 720
    height: 720
    visible: true
    color: "#D3D3D3"
    title: qsTr("Hello World")


    Column{
        id:settingplate
        anchors.left: parent.left
        CommunicationSetting{}
        ProtocolSetting{}
        SendSetting{}
    }
    Column{
        id:windows
        anchors.right: parent.right
        RecieveWindow{}
        SendWindow{}
    }

}
