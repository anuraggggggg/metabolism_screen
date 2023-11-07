import 'package:flutter/gestures.dart';
import 'package:metabolism_screen/Screens/Screen2.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  // get progressValue => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
          child: Padding(
              padding: const EdgeInsets.all(30),
              child: Center(
                  child: Column(
                children: [
                  Row(children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Screen2()),
                        );
                      },
                    ),
                    // Icon(Icons.arrow_back_ios),
                    Expanded(
                        child: Text(
                      "Metabolic Healthspan",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.5,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    SizedBox(
                      height: 30,
                    )
                  ]),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Updated 2 Sept 2023",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.info_outline_rounded),
                      ],
                    ),
                  ),
                  SfRadialGauge(
                    enableLoadingAnimation: true,
                    axes: <RadialAxis>[
                      RadialAxis(
                        useRangeColorForAxis: false,
                        // tickOffset: 20,
                        // ticksPosition: ElementsPosition.inside,
                        // minorTicksPerInterval: 10,
                        minorTickStyle:
                            MinorTickStyle(thickness: 0.7, color: Colors.black),
                        pointers: <GaugePointer>[
                          RangePointer(
                            value: 3,
                            enableAnimation: true,
                            gradient: const SweepGradient(colors: [
                              Color(0xffFF0D0D),
                              Color(0xffFF4E11),
                              Color(0xffFF8E15),
                              Color(0xffFAB733),
                              Color(0xffACB334),
                              Color(0xff69B34C),
                            ]),
                          )
                        ],
                        showTicks: false,
                        minimum: -10,
                        maximum: 5,
                        startAngle: 180,
                        endAngle: 0,
                        interval: 5,
                        showFirstLabel: true,
                        showLastLabel: true,
                        ranges: [
                          GaugeRange(
                              startValue: 0,
                              endValue: 180,
                              color: Colors.white.withOpacity(0.1),
                          )

                        ],
                        annotations: const <GaugeAnnotation>[
                          GaugeAnnotation(
                            angle: 0,
                            widget: Padding(
                              padding: EdgeInsets.only(bottom: 100),
                              child: Text(
                                "+3",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 40),
                              ),
                            ),
                          ),
                          GaugeAnnotation(widget: Text("Healthy Years", style: TextStyle(fontSize: 20),)),

                        ],
                      )
                    ],
                  ),
                  const Row(children: [
                    Expanded(
                      child: Text(
                        'Factors',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text("Sensor Average",
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 17))
                  ]),
                  SizedBox(height: 20),
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)),
                    child: Expanded(
                      child: Row(children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Text("Average Glucose"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                  ),
                                  child: Text("87 mg/ Dl",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(color: Colors.grey)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                height: 30,
                                width: 87,
                                decoration:
                                    BoxDecoration(color: Colors.green.shade50),
                                child: Center(
                                  child: Text("Optimal",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.green)),
                                )),
                          ),
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey,
                                ))),
                      ]),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)),
                    child: Expanded(
                      child: Row(children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(" Glucose Variability"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text("10 mg/ Dl",
                                    style: TextStyle(color: Colors.grey)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                              height: 30,
                              width: 87,
                              decoration:
                                  BoxDecoration(color: Colors.green.shade50),
                              child: Center(
                                child: Text("Optimal",
                                    style: TextStyle(color: Colors.green)),
                              )),
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey,
                                ))),
                      ]),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)),
                    child: Expanded(
                      child: Row(children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey.shade100,
                                  )
                                ),
                                  child: Text("Morning fasting gluscose",  textAlign: TextAlign.center,)
                              ),
                              Center(
                                child: Text("83 mg/ Dl",
                                    style: TextStyle(color: Colors.grey, )),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Container(
                                height: 30,
                                width: 87,
                                decoration:
                                    BoxDecoration(color: Colors.green.shade50),
                                child: Center(
                                  child: Text("Optimal",
                                      style: TextStyle(color: Colors.green)),
                                )),
                          ),
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey,
                                ))),
                      ]),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)),
                    child: Expanded(
                      child: Row(children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text("Glucose Oscillation"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text("29 mg/ Dl",
                                    style: TextStyle(color: Colors.grey)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Container(
                                height: 30,
                                width: 87,
                                decoration:
                                    BoxDecoration(color: Colors.green.shade50),
                                child: Center(
                                  child: Text("Optimal",
                                      style: TextStyle(color: Colors.green)),
                                )),
                          ),
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey,
                                ))),
                      ]),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)),
                    child: Expanded(
                      child: Row(children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text("BMI"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text("24",
                                    style: TextStyle(color: Colors.grey)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                              height: 30,
                              width: 87,
                              decoration:
                                  BoxDecoration(color: Colors.green.shade50),
                              child: Center(
                                child: Text("Optimal",
                                    style: TextStyle(color: Colors.green)),
                              )),
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey,
                                ))),
                      ]),
                    ),
                  )
                ],
              )))),
    ));
  }
}
