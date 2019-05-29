import QtQuick 2.0
import QtQuick.Layouts 1.0

Item {
    id: item
    width: 640
    height: 480

    ColumnLayout {
        id: columnLayout1
        x: 143
        y: 174
        width: 100
        height: 100

    }
    states: [
        State {
            name: "State1"
        }
    ]

}
