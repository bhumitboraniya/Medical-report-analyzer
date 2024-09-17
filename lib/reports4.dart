import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:madical_report_analyzer/chat.dart';
import 'package:madical_report_analyzer/home.dart';
import 'package:madical_report_analyzer/payment_success.dart';

class reports4 extends StatefulWidget {
  const reports4({super.key});

  @override
  State<reports4> createState() => _reports4State();
}

class _reports4State extends State<reports4> {
  bool _isHomeTapped = true; // Default to home tapped
  bool _isChatTapped = false;

  // Method to handle button taps
  void _onButtonTapped(String button) {
    setState(() {
      if (button == 'home') {
        _isHomeTapped = true;
        _isChatTapped = false;
      } else if (button == 'chat') {
        _isHomeTapped = false;
        _isChatTapped = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 36),
              child: Image(
                image: AssetImage('assets/40.png'),
                width: 196,
                height: 31,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 77, left: 17),
              child: Container(
                  child: IconButton(
                icon: Image.asset(
                  'assets/back.png',
                  width: 40,
                  height: 40,
                ),
                onPressed: () => Navigator.pop(context),
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90, left: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "4. Wundrand",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 180, left: 34),
              child: Container(
                width: 154,
                height: 106,
                child: Image(
                  image: AssetImage(
                    'assets/rec.png',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 180, left: 205),
              child: Container(
                width: 154,
                height: 106,
                child: Image(
                  image: AssetImage(
                    'assets/rec.png',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 318, left: 34),
              child: Container(
                width: 154,
                height: 106,
                child: Image(
                  image: AssetImage(
                    'assets/rec.png',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 318, left: 205),
              child: Container(
                width: 154,
                height: 106,
                child: Image(
                  image: AssetImage(
                    'assets/rec.png',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 199, left: 81),
              child: Container(
                  width: 59,
                  height: 47,
                  child: Image(image: AssetImage("assets/v4.png"))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 325, left: 76),
              child: Container(
                  width: 60,
                  height: 60,
                  child: Image(image: AssetImage("assets/v2.png"))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 195, left: 244),
              child: Container(
                  width: 73,
                  height: 53,
                  child: Image(image: AssetImage("assets/v3.png"))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 323, left: 249),
              child: Container(
                  width: 60,
                  height: 65,
                  child: Image(image: AssetImage("assets/v1.png"))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 264, left: 87),
              child: Text(
                'Mazeriert',
                style: TextStyle(
                    fontSize: 11,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 264, left: 259),
              child: Text(
                'Wallartig',
                style: TextStyle(
                    fontSize: 11,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 402, left: 97),
              child: Text(
                'Flach',
                style: TextStyle(
                    fontSize: 11,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 402, left: 256),
              child: Text(
                'Verhärtet',
                style: TextStyle(
                    fontSize: 11,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18, bottom: 126),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => payment_success()));
                        },
                        style: ElevatedButton.styleFrom(
                          // padding: EdgeInsets.symmetric(
                          // horizontal: 32.0, vertical: 12.0),
                          minimumSize: const Size(106, 41),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          backgroundColor: Color(0xff2260FF),
                        ),
                        child: Text(
                          "weiter",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    color: Color(0xffF1EEFB), // Just for visualization
                  ),
                  height: 84,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 24),
                          child: GestureDetector(
                            onTap: () {
                              _onButtonTapped('home');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyApp()),
                              );
                            },
                            child: Image.asset(
                              'assets/bottomhome.png',
                              color: _isHomeTapped ? Colors.blue : Colors.black,
                              width: 49,
                              height: 37,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _onButtonTapped('chat');
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => chat()),
                            );
                          },
                          child: Image.asset(
                            'assets/bottomchat.png',
                            color: _isChatTapped ? Colors.blue : Colors.black,
                            width: 30,
                            height: 37,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
