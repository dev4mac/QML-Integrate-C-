import QtQuick
import QtQuick.Controls
import HelloCpp 1.0


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("C++ <=> QML")

    // YT

    HelloCpp {
        id:dev4mac
    }

    Rectangle {
            id: cadre_haut
            width: parent.width
            height: parent.height /2
            color: "gray"

            Text {

                    id:lbChaine
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter

                    font.pointSize: 20
                    color: "white"
                    text: "My String"

            }

            Button {
                    id:concatener
                    y : lbChaine.y+40
                    text: "Fonction C++ Concaténer"
                    anchors.horizontalCenter: parent.horizontalCenter
                    onClicked: lbChaine.text= dev4mac.concatstring(lbChaine.text)
            }


    }


    Rectangle {
            id: cadre_bas
            x:0
            y:(parent.height /2)
            width: parent.width
            height: parent.height /2
            color: "pink"

            Text {

                    id:lbInteger
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    font.pointSize: 20
                    color: "black"
                    text: "8"

            }


            Button {
                    id:doubler
                    y : lbInteger.y+40
                    text: "Fonction C++ Doubler"
                    anchors.horizontalCenter: parent.horizontalCenter
                    onClicked: lbInteger.text= parseInt(dev4mac.doublerint(lbInteger.text))


            }

    }

}
