import 'package:flutter/material.dart';
import 'package:madical_report_analyzer/reports2.dart';

class reports extends StatelessWidget {
  const reports({super.key});

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
                image: AssetImage('assets/20.png'),
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
                    "2. Foto aufnehmen",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 125),
              child: Image(image: AssetImage('assets/leg.png')),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 208),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Document", style: TextStyle(fontSize: 15)),
                      Text(
                        'Video',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        'Photo',
                        style:
                            TextStyle(color: Color(0xffCEB900), fontSize: 15),
                      ),
                      Text(
                        'Portrait',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 98),
                      child: Image(
                        image: AssetImage('assets/shutter.png'),
                        height: 83,
                        width: 83,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 19),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => reports2()));
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 114, right: 17),
                      child: Image(
                        image: AssetImage(
                          'assets/switch_cam.png',
                        ),
                        width: 50,
                        height: 50,
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
