import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:madical_report_analyzer/home.dart';

class chat extends StatefulWidget {
  const chat({super.key});

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
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
        child: Expanded(
          child: Stack(
            children: [
              Container(
                height: 105,
                color: Color(0xff2260FF),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 40),
                child: Container(
                    child: IconButton(
                  icon: Image.asset(
                    'assets/back.png',
                    width: 40,
                    height: 40,
                    color: Colors.white,
                  ),
                  onPressed: () => Navigator.pop(context),
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, top: 40),
                child: Image(
                  image: AssetImage('assets/profile.png'),
                  width: 54,
                  height: 54,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 140, top: 54),
                child: Text(
                  'KI-Chatbot',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 143, left: 159, right: 10),
                child: Image(
                  image: AssetImage('assets/m1.png'),
                  width: 200,
                  height: 80,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 163, left: 174),
                child: Text(
                  'was kann ich machen wenn \nmeine Wunde juckt?',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 332, top: 225),
                child: Text(
                  '9:00',
                  style: TextStyle(color: Color(0xff809CFF), fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 243),
                child: Image(
                  image: AssetImage('assets/m2.png'),
                  width: 201,
                  height: 80,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 266),
                child: Text(
                  'Auf welche wunde beziehst du\n dich?',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 327),
                child: Text(
                  '9:30',
                  style: TextStyle(color: Color(0xff809CFF), fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 85),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 72,
                    color: Color(0xffCAD6FF),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Image(
                            image: AssetImage('assets/clip.png'),
                            width: 36,
                            height: 36,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Image(
                            image: AssetImage('assets/write.png'),
                            height: 37,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Image(
                            image: AssetImage('assets/send.png'),
                            height: 36,
                            width: 37,
                          ),
                        )
                      ],
                    ),
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
                                color:
                                    _isHomeTapped ? Colors.blue : Colors.black,
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
      ),
    );
  }
}
