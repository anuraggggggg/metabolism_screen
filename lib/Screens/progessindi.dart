import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(

            children: [
              SfRadialGauge(
                enableLoadingAnimation: true,
                axes: <RadialAxis>[
                  RadialAxis(
                    useRangeColorForAxis: false,
                    tickOffset: 20,
                    ticksPosition: ElementsPosition.inside,
                    minorTicksPerInterval: 10,

                    minorTickStyle: MinorTickStyle(
                        thickness: 0.5,
                        color: Colors.black
                    ),
                    pointers:
                    <GaugePointer>[
                      RangePointer(value: 20, enableAnimation: true,
                        gradient: const SweepGradient(colors: [
                          Color(0xffFF0D0D),
                          Color(0xffFF4E11),
                          Color(0xffFF8E15),
                          Color(0xffFAB733),
                          Color(0xffACB334),
                          Color(0xff69B34C),



                        ]

                        ),)
                    ],
                    showTicks: false,
                    minimum: 0,
                    maximum: 50,
                    startAngle: 180,
                    endAngle: 0,
                    interval: 5,
                    showFirstLabel: true,
                    showLastLabel: true,
                    ranges: [GaugeRange(
                        startValue: 0,
                        endValue: 180,
                        color : Colors.white.withOpacity(0.1)


                    )

                    ],
                    annotations: <GaugeAnnotation>[
                      GaugeAnnotation(
                        angle: 0,
                        widget: Padding(
                          padding: const EdgeInsets.only(bottom: 100),
                          child: Text("+30", style: TextStyle( fontWeight: FontWeight.bold, fontSize: 40
                          ),),
                        ),
                      )

                    ],
                  )


                ],

              ),
            ],


          ),
        ),
      ),
    );
  }
}