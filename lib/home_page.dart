import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Duration duration = Duration();
  Timer? repeatedFunction;

  startTimer() {
    repeatedFunction = Timer.periodic(Duration(seconds: 1), (qqqqqq) {
      setState(() {
        int newSeconds = duration.inSeconds + 1;
        duration = Duration(seconds: newSeconds);
      });
    });
  }

  bool isRunning = false;

  @override
  Widget build(BuildContext context) {
    log("HomePage build");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stop Watch'),
        backgroundColor: Color(0xFF0E0C10),
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/background.jpg",
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Center(
                        child: Text(
                          duration.inHours.toString().padLeft(2, "0"),
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Center(
                        child: Text(
                          duration.inMinutes
                              .remainder(60)
                              .toString()
                              .padLeft(2, "0"),
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Center(
                        child: Text(
                          duration.inSeconds
                              .remainder(60)
                              .toString()
                              .padLeft(2, "0"),
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              isRunning
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF0E0C10),
                              
                            ),
                            onPressed: () {
                              if (repeatedFunction!.isActive) {
                                setState(() {
                                  repeatedFunction!.cancel();
                                });
                              } else {
                                startTimer();
                              }
                            },
                            child: Text(
                              (repeatedFunction!.isActive) ? "Stop" : "Resume",
                              style: TextStyle(fontSize: 22, color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(width: 22),
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF0E0C10),
                              
                            ),
                            onPressed: () {
                              repeatedFunction!.cancel();
                              setState(() {
                                duration = Duration(seconds: 0);
                                isRunning = false;
                              });
                            },
                            child: Text(
                              "CANCEL",
                              style: TextStyle(fontSize: 19, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    )
                  : SizedBox(
                      height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF0E0C10),
                              
                            ),
                        onPressed: () {
                          startTimer();
                          setState(() {
                            isRunning = true;
                          });
                        },
                        child: Text(
                          "Start Timer",
                          style: TextStyle(fontSize: 23, color: Colors.white),
                        ),
                      ),
                  ),
              SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
