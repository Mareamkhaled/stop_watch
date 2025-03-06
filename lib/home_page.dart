import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.black,
                  height: MediaQuery.of(context).size.height *
                      0.1, // 10% of screen height
                  width: MediaQuery.of(context).size.width * 0.25,
                ),
                SizedBox(width: 10),
                Container(
                  color: Colors.black,
                  height: MediaQuery.of(context).size.height *
                      0.1, // 10% of screen height
                  width: MediaQuery.of(context).size.width * 0.25,
                ),
                SizedBox(width: 10),
                Container(
                  color: Colors.black,
                  height: MediaQuery.of(context).size.height *
                      0.1, // 10% of screen height
                  width: MediaQuery.of(context).size.width * 0.25,
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
