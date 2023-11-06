import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metabolism_screen/Screens/Screen2.dart';
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
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end : Alignment.bottomCenter,
            colors: [
          Color(0xff56A07D),
          Color(0xff86BC95),
          Color(0xff86BC95),
          Color(0xff6B997D),
        ]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(40),
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
                        backgroundColor: Colors.white,
                        valueColor: AlwaysStoppedAnimation(Colors.white),
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
                        valueColor: AlwaysStoppedAnimation(Color(0xff6B997D),),
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
                  height: 100,
                ),
                Column(children: [
                  CircularPercentIndicator(
                    radius: 130,
                    lineWidth: 8,
                    progressColor: Colors.white,
                    percent: 0.9,
                    backgroundColor: Colors.green.shade100,
                    circularStrokeCap: CircularStrokeCap.butt,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                            text: const TextSpan(children: <TextSpan>[
                          TextSpan(text: "90", style: TextStyle(fontSize: 70))
                        ])),
                        RichText(
                            text: const TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: "Very Stable", style: TextStyle(fontSize: 20))
                        ])),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
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
                ]),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>( Colors.transparent)
                  ),
                    onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const Screen2()),);
                    }, child: Icon(Icons.arrow_forward_ios_rounded)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
