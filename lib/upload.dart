import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:madical_report_analyzer/chat.dart';
import 'package:madical_report_analyzer/home.dart';
import 'package:madical_report_analyzer/reports.dart';
import 'package:madical_report_analyzer/reports2.dart';

class upload extends StatefulWidget {
  const upload({super.key});

  @override
  State<upload> createState() => _uploadState();
}

class _uploadState extends State<upload> {
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
        color: Color(0xffa9bcfe),
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 66),
                      child: Image(image: AssetImage('assets/10.png')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 77, left: 17),
                      child: Container(
                          child: IconButton(
                        icon: Image.asset(
                          'assets/close.png',
                          width: 32,
                          height: 32,
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
                            "1. Wundlokalisation",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 141,
                        left: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(),
                            child: Text(
                              "Zur Lokalisation entsprechend auf den Körper tippen",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 169),
                          child: Image(image: AssetImage('assets/human.png')),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 634),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              // padding: EdgeInsets.symmetric(
                              // horizontal: 32.0, vertical: 12.0),
                              minimumSize: const Size(204, 41),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              backgroundColor: Color(0xff2260FF),
                            ),
                            child: Text(
                              "Vorderseite",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 710),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => reports()),
                              );
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
              ),
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
