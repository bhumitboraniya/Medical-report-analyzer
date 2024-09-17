import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:madical_report_analyzer/reports3.dart';

class reports2 extends StatefulWidget {
  const reports2({super.key});

  @override
  State<reports2> createState() => _reports2State();
}

class _reports2State extends State<reports2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xfffffffff),
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
                    "2.1 Wundmessung",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 141),
                  child: Container(
                    width: 129,
                    height: 98,
                    decoration: BoxDecoration(
                        color: Color(0xffa9bcfe),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            "Gesamtfläche",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            "44,72cm²",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MeasurementContainer(label: 'Länge', value: '10,4cm'),
                  MeasurementContainer(label: 'Breite', value: '4,3cm'),
                  MeasurementContainer(label: 'Tiefe', value: '9,mm'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 380, left: 16),
              child: Text(
                "Verteilung des Gewebes",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 435, left: 18, right: 18),
              child: Image(
                height: 183,
                image: AssetImage('assets/pie.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 600, left: 45),
              child: Image(
                height: 213,
                image: AssetImage('assets/kachro.png'),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18, bottom: 26),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => reports3()));
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
            )
          ],
        ),
      ),
    );
  }
}

class MeasurementContainer extends StatelessWidget {
  final String label;
  final String value;

  MeasurementContainer({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      height: 110,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xffa9bcfe),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
          // SizedBox(height: 8.0),
          Text(
            value,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 14, top: 1),
                child: Image(
                  image: AssetImage('assets/Edit.png'),
                  width: 20,
                  height: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
