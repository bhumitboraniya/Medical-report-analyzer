import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:madical_report_analyzer/reporst5.dart';

class payment_success extends StatefulWidget {
  const payment_success({super.key});

  @override
  State<payment_success> createState() => _payment_successState();
}

class _payment_successState extends State<payment_success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              color: Color(0xff2260FF),
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              height: 70,
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 0),
                child: Image(image: AssetImage('assets/100.png')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 77, left: 17),
              child: Container(
                  child: IconButton(
                icon: Image.asset(
                  'assets/back.png',
                  width: 40,
                  color: Colors.white,
                  height: 40,
                ),
                onPressed: () => Navigator.pop(context),
              )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 119),
                  child: Image(
                    image: AssetImage('assets/done.png'),
                    width: 132,
                    height: 130,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 286),
                  child: Text(
                    'Glückwunsch',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 279, right: 10),
                  child: Image(
                    image: AssetImage('assets/celebrate.png'),
                    width: 60,
                    height: 60,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 345,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(
                      style: TextStyle(
                        fontSize: 24,
                      ),
                      children: [
                        TextSpan(
                          text: 'Wunde ',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: 'Dekubitus-03 ',
                          style: TextStyle(color: Color(0xffFF6B00)),
                        ),
                        TextSpan(
                          text: 'rfolgreich \ndokumentiert',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 425),
                  child: Container(
                    width: 155,
                    height: 73,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff2260FF),
                        border: Border.all(color: Colors.white)),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 433),
                  child: Text(
                    'Dein WoundScore',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 462),
                  child: Image(
                    width: 56,
                    height: 26,
                    image: AssetImage(
                      "assets/star10.png",
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 520),
                  child: Container(
                      width: 350,
                      height: 174,
                      child: Image(image: AssetImage('assets/graph.png'))),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 720, left: 23),
                  child: Text(
                    'Denk daran: Eine sorgfältige\n Dokumentation hilft dir dabei,\n eine schnellstmögliche Heilung herbeizuführen',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 720, right: 20),
                  child: Image(
                    image: AssetImage('assets/lamp.png'),
                    width: 48,
                    height: 48,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15, bottom: 23),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => reports5()));
                        },
                        style: ElevatedButton.styleFrom(
                          // padding: EdgeInsets.symmetric(
                          // horizontal: 32.0, vertical: 12.0),
                          minimumSize: const Size(106, 41),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          backgroundColor: Color(0xff99B5FF),
                        ),
                        child: Text(
                          "Zur Wundpflege",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
