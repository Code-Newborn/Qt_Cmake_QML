import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Shapes 1.12

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: qsTr("Qt基于Qml绘制不规则形状")

    Rectangle {
        id: root
        width: 767
        height: 600
        layer.samples: 16
        layer.smooth: true
        layer.enabled: true

        Shape {
            anchors.centerIn: parent

            antialiasing: true//反走样抗锯齿
            smooth: true

            ShapePath {

                strokeWidth: 3
                strokeColor: "darkGray"
                fillColor: "Green"


                startX: -40; startY: 200

                // The circle

                PathArc { x: 40; y: 200; radiusX: 200; radiusY: 200; useLargeArc: true }
                PathLine { x: 40; y: 120 }
                PathArc { x: -40; y: 120; radiusX: 120; radiusY: 120; useLargeArc: true; direction: PathArc.Counterclockwise }
                PathLine { x: -40; y: 200 }


            }

            ShapePath {

                strokeWidth: 3
                strokeColor: "pink"
                fillColor: "blue"

                startX: -40; startY: 200

                // The dots

                PathMove { x: -20; y: 80 }
                PathArc { x: 20; y: 80; radiusX: 20; radiusY: 20; useLargeArc: true }
                PathArc { x: -20; y: 80; radiusX: 20; radiusY: 20; useLargeArc: true }

                PathMove { x: -20; y: 130 }
                PathArc { x: 20; y: 130; radiusX: 20; radiusY: 20; useLargeArc: true }
                PathArc { x: -20; y: 130; radiusX: 20; radiusY: 20; useLargeArc: true }

                PathMove { x: -20; y: 180 }
                PathArc { x: 20; y: 180; radiusX: 20; radiusY: 20; useLargeArc: true }
                PathArc { x: -20; y: 180; radiusX: 20; radiusY: 20; useLargeArc: true }

                PathMove { x: -20; y: 230 }
                PathArc { x: 20; y: 230; radiusX: 20; radiusY: 20; useLargeArc: true }
                PathArc { x: -20; y: 230; radiusX: 20; radiusY: 20; useLargeArc: true }
            }
        }
    }
}
