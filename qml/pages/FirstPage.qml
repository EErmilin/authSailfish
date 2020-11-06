import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All
    SilicaFlickable {
        id: splash
        anchors.bottomMargin: 0
        anchors.fill: parent
        contentHeight: page.height
        Rectangle {
            id:splashScreen
            width: page.width; height: page.height;
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#7cfff0" }
                GradientStop { position: 0.8; color: "blue" }
            }

            Column {
                id: column1
                width: page.width
                spacing: Theme.paddingLarge
                anchors.verticalCenter: parent.verticalCenter;
        Image {
            id: image1
            anchors.horizontalCenter: parent.horizontalCenter;
            width: 300
            height: 300
            fillMode: Image.PreserveAspectFit
            source: "./logo.png"
        }
        Timer {
                interval: 10000; running: true; repeat: false
                onTriggered: {
                    splashScreen.visible = false
                   authPage.visible = true;
                    splashScreen.timeout()
                }
            }
}
}
            Rectangle {
                id: authPage;
                visible: false
                width: page.width; height: page.height;
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "#7cfff0" }
                    GradientStop { position: 0.8; color: "blue" }
                }

                Column {
                    id: column
                    width: page.width
                    spacing: Theme.paddingLarge
                    anchors.verticalCenter: parent.verticalCenter;
            Image {
                id: image
                anchors.horizontalCenter: parent.horizontalCenter;
                width: 300
                height: 300
                fillMode: Image.PreserveAspectFit
                source: "./logo.png"
            }
            Rectangle {
                width: 550; height: 100;
             anchors.horizontalCenter: parent.horizontalCenter;
             border.color: "white"
             color: "#3077cf";
             radius: 50
            TextInput {
                width: parent.width
                text: "Логин";
                color: "white"
                font {pixelSize: 35  }
                horizontalAlignment: TextInput.AlignHCenter;
                y: 25;
            }
            }
            Rectangle {
                width: 550; height: 100;
             anchors.horizontalCenter: parent.horizontalCenter;
             border.color: "white"
             color: "#0a489f"
             radius: 50
            TextInput {
                width: parent.width
                color: "white"
                text: "Пароль";
                font { pixelSize: 15 }
                echoMode: TextInput.Password
                horizontalAlignment: TextInput.AlignHCenter
                y: 40;
            }
                }
            Rectangle {
                width: 300; height: 80;
             anchors.horizontalCenter: parent.horizontalCenter;
             id: auth
             color: "white"
             radius: 50
             Text {
             text: "ВХОД"
             color: "blue"
             font { bold: true; pixelSize: 36}
             anchors.horizontalCenter: parent.horizontalCenter;
             anchors.verticalCenter: parent.verticalCenter;
             }
             MouseArea {
             id: mouseArea1
             anchors.fill: parent
             onClicked: {}
             }
            }

            Rectangle {
                width: 300; height: 80;
             anchors.horizontalCenter: parent.horizontalCenter;
             id: rregistration
             color: "white"
             radius: 50
             Text {
             text: "РЕГИСТРАЦИЯ"
             color: "blue"
             font { bold: true; pixelSize: 36 }
             anchors.horizontalCenter: parent.horizontalCenter;
             anchors.verticalCenter: parent.verticalCenter;
             }
             MouseArea {
             id: mouseArea2
             anchors.fill: parent
             onClicked: {}
             }
            }
}
}
}
}
