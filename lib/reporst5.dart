import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:madical_report_analyzer/chat.dart';
import 'package:madical_report_analyzer/home.dart';

class reports5 extends StatefulWidget {
  const reports5({super.key});

  @override
  State<reports5> createState() => _reports5State();
}

class _reports5State extends State<reports5> {
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
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 24),
              child: Container(
                  width: 32, height: 32, child: Icon(Icons.arrow_back_ios)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Wundrand",
                    style: TextStyle(
                        fontSize: 24,
                        color: Color(0xff2260FF),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 97, left: 14),
              child: Image(
                image: AssetImage('assets/n1.png'),
                width: 63,
                height: 63,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 101, left: 87),
              child: Text(
                "Wunde desinfizieren mit:",
                style: TextStyle(
                    color: Color(
                      0xff2260FF,
                    ),
                    fontSize: 16),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 134,
                  ),
                  child: Image(
                    image: AssetImage('assets/i1.png'),
                    width: 70,
                    height: 124,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 293, left: 14),
              child: Image(
                image: AssetImage('assets/n3.png'),
                width: 63,
                height: 63,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 293, left: 87),
              child: Text(
                "Wunde benetzen mit:",
                style: TextStyle(
                    color: Color(
                      0xff2260FF,
                    ),
                    fontSize: 16),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 310,
                  ),
                  child: Image(
                    image: AssetImage('assets/i3.png'),
                    width: 102,
                    height: 154,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 490, left: 14),
              child: Image(
                image: AssetImage('assets/n2.png'),
                width: 63,
                height: 63,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 498, left: 87),
              child: Text(
                "Wundverband 5 x 7 cm anbringen:",
                style: TextStyle(
                    color: Color(
                      0xff2260FF,
                    ),
                    fontSize: 16),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 534,
                  ),
                  child: Image(
                    image: AssetImage('assets/i2.png'),
                    width: 159,
                    height: 165,
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
                      padding: const EdgeInsets.only(right: 10, bottom: 93),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
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
                          "Abschließen",
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
