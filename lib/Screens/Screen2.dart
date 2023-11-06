import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metabolism_screen/Screens/progessindi.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'Screen1.dart';
import 'Screen3.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen1State();
}

class _Screen1State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end : Alignment.bottomRight,
              colors: [
                Color(0xc5e59c99),
                Color(0xffDE6C74),
                Color(0xffEC9480),
                Color(0xffBA5752),
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
                        value: 0,
                        backgroundColor: Color(0xffBA5752),
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 5,
                      child: LinearProgressIndicator(
                        value: 5,
                        backgroundColor: Color(0xffBA5752),
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
                  height: 100,
                ),
                Column(children: [
                  CircularPercentIndicator(
                    radius: 130,
                    lineWidth: 8,
                    progressColor: Colors.white,
                    percent: 0.55,
                    backgroundColor:  Color(0xffBA5752),
                    circularStrokeCap: CircularStrokeCap.butt,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                            text: const TextSpan(children: <TextSpan>[
                              TextSpan(text: "55", style: TextStyle(fontSize: 70))
                            ])),
                        RichText(
                            text: const TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: "Low Stability", style: TextStyle(fontSize: 20))
                            ])),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Center(
                    child: Text(
                      "Aim for fewer spikes",
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
                      "A metabolic score in this range suggests you had at least one large glucose spike yesterday",

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
                      backgroundColor: MaterialStateProperty.all<Color>( Color(0xc5e59c99))
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Screen1()),);
                    }, child: Icon(Icons.arrow_back_ios_rounded)),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>( Color(0xc5e59c99))
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Screen3()),);
                    }, child: Icon(Icons.arrow_forward_ios_rounded)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
