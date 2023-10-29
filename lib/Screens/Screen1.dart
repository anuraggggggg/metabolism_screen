import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metabolism_screen/Screens/progessindi.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   gradient: LinearGradient(colors: [
      //     Color(0xff47B649),
      //     Color(0xff118B44),
      //
      //   ])
      // ),
      child: Scaffold(
        backgroundColor: Colors.lightGreen.shade800,
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              const Row(
                children: [
                  Expanded(
                    flex: 12,
                    child: Center(
                      child: Text(
                        "Day Review",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: CloseButton(
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.green.shade800,
                      valueColor: AlwaysStoppedAnimation(Colors.green.shade400),
                      value: 5,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 5,
                    child: LinearProgressIndicator(
                      value: 0,
                      backgroundColor: Colors.green.shade100,
                      valueColor: AlwaysStoppedAnimation(Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                  child: Text(
                "Yesterday's  \n Metabolic Score",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
              const SizedBox(
                height: 30,
              ),
              Column(children: [
                CircularPercentIndicator(
                  radius: 150,
                  lineWidth: 8,
                  progressColor: Colors.white,
                  percent: 0.9,
                  backgroundColor: Colors.green.shade500,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                          text: const TextSpan(children: <TextSpan>[
                        TextSpan(text: "90", style: TextStyle(fontSize: 130))
                      ])),
                      RichText(
                          text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: "Very Stable", style: TextStyle(fontSize: 30))
                      ])),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Center(
                  child: Text(
                    "Impresive stability",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    "A metabolic score in this range suggests your glucose was exception flat or that perphaps you were fasting",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    //FUNCTION
                  },
                  child: const Center(
                    child: Text(
                      ' Tap or swipe to start',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.white),
                    ),
                  ),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
