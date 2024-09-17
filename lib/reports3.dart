import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:madical_report_analyzer/chat.dart';
import 'package:madical_report_analyzer/home.dart';
import 'package:madical_report_analyzer/reports4.dart';

class reports3 extends StatefulWidget {
  const reports3({super.key});

  @override
  State<reports3> createState() => _reports3State();
}

String _selectedValue = 'Schnittwunde';

class _reports3State extends State<reports3> {
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
        height: double.infinity,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 36),
              child: Image(
                image: AssetImage('assets/30.png'),
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
                    "3. Wundart",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 110, left: 20, right: 20),
              child: ListView(
                children: [
                  _buildCustomRadioButton('OP-Wunde', Color(0xff2260FF)),
                  _buildCustomRadioButton('Schnittwunde', Color(0xff2260FF)),
                  _buildCustomRadioButton('Dekubitus', Color(0xff2260FF)),
                  _buildCustomRadioButton('Verätzung', Color(0xff2260FF)),
                  _buildCustomRadioButton('Pergamenthaut', Color(0xff2260FF)),
                  _buildCustomRadioButton('Verbrennung', Color(0xff2260FF)),
                  _buildCustomRadioButton('Erfrierung', Color(0xff2260FF)),
                  _buildCustomRadioButton('Andere', Color(0xff2260FF)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 610, right: 30),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffecf1ff),
                  ),
                  width: double.infinity,
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 14),
                    child: Text(
                      'Gieb hier deine eigene Wundart ein...',
                      style: TextStyle(color: Color(0xff428CD0)),
                    ),
                  )),
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
                                  builder: (context) => reports4()));
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

  Widget _buildCustomRadioButton(String value, Color borderColor) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedValue = value;
        });
      },
      child: Container(
        height: 57,
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        decoration: BoxDecoration(
            color: _selectedValue == value
                ? Color(0xFFD6E4FF)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(40)),
        child: Row(
          children: [
            CustomPaint(
              painter: RadioButtonPainter(
                isSelected: _selectedValue == value,
                borderColor: borderColor,
              ),
              child: SizedBox(
                width: 24,
                height: 24,
                child: Center(
                  child: _selectedValue == value
                      ? Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff2260FF),
                          ),
                        )
                      : null,
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(child: Text(value)),
            IconButton(
              icon: Icon(Icons.info_outline),
              onPressed: () {
                // Add your info button functionality here
              },
            ),
          ],
        ),
      ),
    );
  }
}

class RadioButtonPainter extends CustomPainter {
  final bool isSelected;
  final Color borderColor;

  RadioButtonPainter({required this.isSelected, required this.borderColor});

  @override
  void paint(Canvas canvas, Size size) {
    Paint outerPaint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    Paint innerPaint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    double radius = size.width / 2;
    double innerRadius = radius - 5;

    // Draw the outer circle
    canvas.drawCircle(Offset(radius, radius), radius, outerPaint);

    // Draw the inner circle
    canvas.drawCircle(Offset(radius, radius), innerRadius, innerPaint);

    // Draw the filled circle if selected
    if (isSelected) {
      Paint fillPaint = Paint()
        ..style = PaintingStyle.fill
        ..color = Color(0xff2260FF);
      canvas.drawCircle(Offset(radius, radius), innerRadius / 1, fillPaint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
