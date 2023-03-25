import QtQuick
import QtQuick.Window
import QtQuick.Controls 6.3
import QtQuick.Layouts 6.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    color:"blue"

    Rectangle{
        width: parent.width/4
        height: parent.height/4
        property int clicknum: 0
        focus: true
        anchors.centerIn: parent
        MouseArea{
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton
            onClicked: {
                parent.increment()
                console.log("Clicked "+parent.clicknum+" times")
            }
        }
        color: clicknum%2?"yellow":"red"

        Text {
            id: lable
            x:24;y:16
            text: "cliked: "+parent.clicknum
            font.family: "Ubuntu"
            font.pixelSize: 24
        }
        Keys.onEscapePressed: {
            clicknum = 0
        }
        function increment(){
            clicknum ++
        }
    }








}
