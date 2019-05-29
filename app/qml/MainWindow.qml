import QtQuick 2.0
import QtQuick.Window 2.0
import QtQuick.Layouts 1.0

import "Constants.js" as Constants

Rectangle {
    id: main
	width: 1404
	height: 1072

    color: Constants.BACKGOUND_COLOR;
	MouseArea {
        id: ma
        anchors.fill: parent
        hoverEnabled: true

        onClicked: {
            console.log("big: click detected");
        }
    }

	Board {
		id: board
		objectName: "board"
		anchors.left: parent.left; anchors.top: parent.top; anchors.bottom: parent.bottom;
		anchors.margins: Constants.INDENT_DEFAULT
		width: height
	}

}

