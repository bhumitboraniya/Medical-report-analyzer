import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:madical_report_analyzer/home.dart';

class splash extends StatefulWidget {
  @override
  State<splash> createState() => _SplashState();
}

class _SplashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MyApp(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.white,
            Colors.white,
            Colors.white,
          ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/splash.png', // Path to your app's logo
              width: 160, // Adjust width as needed
              height: 160, // Adjust height as needed
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                'WoundCarePro',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w100,
                  color: Color(0xff2260FF),
                ), // Set text color
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                'Deine intelligente \n Wunddokumentation',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff2260FF),
                ),
              ),
            ),
            SizedBox(height: 60),
            SizedBox(
              width: 207, // Set the desired width
              height: 50, // Set the desired height
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff2260FF), // Background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Rounded edges
                  ),
                  // padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white, // Text color
                    fontSize: 18,
                  ),
                ),
              ),
            ),

            SizedBox(height: 20), // Space between buttons
            Container(
              width: 207,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffCAD6FF), // Ba
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Rounded edges
                  ),
                  // padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                ),
                child: Text(
                  'Registrieren',
                  style: TextStyle(
                    color: Color(0xff2260FF),
                    fontSize: 18,
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


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class FlutterApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Hostel Manager",
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue
//       ),
//       home: spl,
//     ),
//   }
// }
