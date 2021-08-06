import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
//flutter run -d chrome --web-port=8080 --web-hostname=127.0.0.1

main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double valu=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              SfRadialGauge(
                enableLoadingAnimation: true, animationDuration: 4500,
                axes: <RadialAxis>[
                  RadialAxis(

                    pointers: <GaugePointer>[
                      NeedlePointer(
                        value: valu,
                        needleEndWidth: 14,
                        enableAnimation: true,


                        needleLength: 40,
                        tailStyle: TailStyle(
                            length: 0.05,
                            width: 14
                        ),
                        knobStyle: KnobStyle(
                            knobRadius: 0.06
                        ),

                      )
                    ],
                    showLabels: false,
                    showAxisLine: false,

                    showTicks: false,
                    startAngle: 180,
                    canScaleToFit: true,
                    endAngle: 0,
                    minimum: 0,
                    maximum: 180,
                    interval: 10,
                    ranges: <GaugeRange>[
                      GaugeRange(
                        startValue: 0,
                        endValue: 50,
                        color: Colors.green[600],
                        startWidth: 0,
                        endWidth: 22,

                      ),
                      GaugeRange(
                        startValue: 52,
                        endValue: 54,
                        color: Colors.green[500],
                        startWidth: 22,
                        endWidth: 25,

                      ),
                      GaugeRange(
                        startValue: 56,
                        endValue: 58,
                        color: Colors.green[400],
                        startWidth: 25,
                        endWidth: 27,

                      ),
                      GaugeRange(
                        startValue: 60,
                        endValue: 65,
                        color: Colors.green[500],
                        startWidth: 27,
                        endWidth: 31,

                      ),
                      GaugeRange(
                        startValue: 68,
                        endValue: 72,
                        color: Colors.green[500],
                        startWidth: 32,
                        endWidth: 35,

                      ),
                      GaugeRange(
                        startValue: 74,
                        endValue: 82,
                        color: Colors.yellow,
                        startWidth: 36,
                        endWidth: 41,

                      ),
                      GaugeRange(
                        startValue: 85,
                        endValue: 93,
                        color: Colors.yellow,
                        startWidth: 43,
                        endWidth: 48,

                      ),
                      GaugeRange(
                        startValue: 98,
                        endValue: 110,
                        color: Colors.amber[900],
                        startWidth: 50,
                        endWidth: 56,

                      ),
                      GaugeRange(
                        startValue: 115,
                        endValue: 132,
                        color: Colors.red[500],
                        startWidth: 59,
                        endWidth: 67,

                      ),
                      GaugeRange(
                        startValue: 137,
                        endValue: 155,
                        color: Colors.deepOrangeAccent[400],
                        startWidth: 69,
                        endWidth: 73,

                      ),
                      GaugeRange(
                        startValue: 160,
                        endValue: 180,
                        color: Colors.deepOrangeAccent[700],
                        startWidth: 73,
                        endWidth: 75,


                      ),

                    ],

                  ),

                ],
              ),
              IconButton(onPressed: (){

                setState(() {
                  valu+=20;

                });
              }, icon: Icon(Icons.plus_one))
            ],
          ),

        ),
      ),

    );
  }
}