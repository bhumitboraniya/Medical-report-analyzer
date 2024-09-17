import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:madical_report_analyzer/chat.dart';
import 'package:madical_report_analyzer/upload.dart';

void main() {
  runApp(MyApp());
}

String _selectedButton = 'home'; // 'home' or 'chat'

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      // home: BlocProvider(
      //   child: const MainWrapper(),
      //   create: (context) => BottomNavCubit(),
      // ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        child: Padding(
          padding: const EdgeInsets.only(bottom: 0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(),
                    child: Container(
                      child: Stack(
                        children: [
                          Container(
                            height: 217,
                            decoration: BoxDecoration(
                              color: Color(0XFF2260FF),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                            ),
                            child: SafeArea(
                              child: WelcomeCard(),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                  height:
                                      192), // Adjust the height to match the AppBar height
                              Center(
                                child: Container(
                                  width: 207,
                                  height: 63,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => upload()),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      // padding: EdgeInsets.symmetric(
                                      // horizontal: 32.0, vertical: 12.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                      backgroundColor: Color(0xffA9BCFE),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Neue Wunde",
                                          style: TextStyle(
                                            color: Color(0xffffffff),
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(
                                            width:
                                                8.0), // Add some space between the text and icon
                                        Image.asset(
                                          'assets/plus.png', // Path to your icon
                                          width:
                                              39.0, // Set the width of the icon
                                          height:
                                              39.0, // Set the height of the icon
                                          color: Color(
                                              0xffffffff), // Optional: set color if the icon is monochrome
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 266, left: 20, right: 16),
                            child: Text(
                              'Anstehende Dokumentationen:',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 290, left: 14, right: 16),
                            child: Container(
                              height: 124,
                              child: CalendarView(),
                              color: Color(0xffcad6ff),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 420, left: 26, right: 16),
                            child: Text(
                              'Deine Wunden:',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 445, left: 25, right: 40),
                            child: WoundHealingCard1(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 573, left: 25, right: 40),
                            child: WoundHealingCard2(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 700, left: 25, right: 40),
                            child: WoundHealingCard3(),
                          ),
                        ],
                      ),
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

class WelcomeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 16, 16, 0),
                  child: Text(
                    'Willkommen',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
                  child: Text(
                    'Oma Rosi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Alter',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '87',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Geschlecht',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'weiblich',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Benutzernr.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          '3356635915',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(0, -30),
            child: Container(
              width: 100,
              height: 99,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  "assets/profile.png",
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CalendarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5, top: 4),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/calback.png',
                  width: 33,
                  height: 30,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 7, top: 3),
                  child: Image.asset(
                    'assets/calender.png', // Path to your icon
                    width: 18.0, // Set the width of the icon
                    height: 21.0, // Set the height of the icon
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 42,
                      top:
                          3), // Adjust the padding to position the text correctly
                  child: Container(
                    child: Text(
                      "Mai",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              DayContainer(day: '22', label: 'MO', color: Colors.white),
              DayContainer(day: '23', label: 'DI', color: Colors.white),
              DayContainer(day: '24', label: 'MI', color: Colors.white),
              DayContainer(day: '25', label: 'DO', color: Color(0xff2260ff)),
              DayContainer(day: '26', label: 'FR', color: Color(0xffff0000)),
              DayContainer(
                  day: '27',
                  label: 'SA',
                  color: Color(0xff2260ff),
                  isSelected: true),
              DayContainer(day: '28', label: 'SO', color: Color(0xffff6b00)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 200),
          child: Image(
            image: AssetImage('assets/up.png'),
            width: 10,
            height: 10,
          ),
        ),
      ],
    );
  }
}

class DayContainer extends StatelessWidget {
  final String day;
  final String label;
  final Color color;
  final bool isSelected;

  DayContainer(
      {required this.day,
      required this.label,
      required this.color,
      this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Container(
        width: 40,
        height: 60,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(18),
          border: isSelected ? Border.all(color: Colors.black, width: 2) : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              day,
              style: TextStyle(
                  color: isSelected ? Color(0xffcad6ff) : Color(0xffcad6ff),
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Color(0xffcad6ff) : Color(0xffcad6ff),
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WoundHealingCard1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 114,
      width: double.infinity,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Color(0xFFD6E2FB), // Light blue background color
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 234, top: 75),
            child: Image(
              image: AssetImage(
                'assets/calwhite.png',
              ),
              width: 21,
              height: 21,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 257, top: 75),
            child: Image(
              image: AssetImage(
                'assets/heart.png',
              ),
              width: 21,
              height: 21,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 23, left: 8),
            child: Container(
              width: 66,
              height: 69,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/c1.png'), // Path to the wound image
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 26),
                  child: Text(
                    'OP-Wunde-01',
                    style: TextStyle(
                      color: Color(0xFF3D79F0), // Text color
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 84, top: 0),
                  child: Container(
                    height: 38,
                    width: 211,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 0, left: 8),
                          child: Text(
                            'Zuletzt dokumentiert am: 27.05.24',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6, left: 82),
                  child: Container(
                    height: 22,
                    width: 146,
                    decoration: BoxDecoration(
                        color: Color(0xff2260ff),
                        borderRadius: BorderRadius.all(Radius.circular(19))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 21, top: 1),
                      child: Row(
                        children: [
                          Text(
                            'Heilungsverlauf',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7),
                            child: Image(
                              image: AssetImage(
                                'assets/dil.png',
                              ),
                              width: 15,
                              height: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                width: 52,
                // color: Colors.white,
                height: 24,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 3,
                        right: 2,
                      ),
                      child: Container(
                        child: Image(
                          image: AssetImage('assets/star.png'),
                          width: 16,
                          height: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: Text(
                        '9,8',
                        style: TextStyle(
                          color: Color(0xff2260ff),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WoundHealingCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 114,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Color(0xFFD6E2FB), // Light blue background color
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 234, top: 75),
            child: Image(
              image: AssetImage(
                'assets/calwhite.png',
              ),
              width: 21,
              height: 21,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 257, top: 75),
            child: Image(
              image: AssetImage(
                'assets/heart.png',
              ),
              width: 21,
              height: 21,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 23, left: 8),
            child: Container(
              width: 66,
              height: 69,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image:
                      AssetImage('assets/lag.png'), // Path to the wound image
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 26),
                  child: Text(
                    'Ulcus-02',
                    style: TextStyle(
                      color: Colors.red, // Text color
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 84, top: 0),
                  child: Container(
                    height: 38,
                    width: 211,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 0, left: 8),
                          child: Text(
                            'Zuletzt dokumentiert am: 26.05.24',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6, left: 82),
                  child: Container(
                    height: 22,
                    width: 146,
                    decoration: BoxDecoration(
                        color: Color(0xff2260ff),
                        borderRadius: BorderRadius.all(Radius.circular(19))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 21, top: 1),
                      child: Row(
                        children: [
                          Text(
                            'Heilungsverlauf',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7),
                            child: Image(
                              image: AssetImage(
                                'assets/dil.png',
                              ),
                              width: 15,
                              height: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                width: 52,
                // color: Colors.white,
                height: 24,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 3,
                        right: 2,
                      ),
                      child: Container(
                        child: Image(
                          image: AssetImage('assets/star.png'),
                          width: 16,
                          height: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: Text(
                        '7,8',
                        style: TextStyle(
                          color: Color(0xff2260ff),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WoundHealingCard3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 114,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Color(0xFFD6E2FB), // Light blue background color
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 234, top: 75),
            child: Image(
              image: AssetImage(
                'assets/calwhite.png',
              ),
              width: 21,
              height: 21,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 257, top: 75),
            child: Image(
              image: AssetImage(
                'assets/heart.png',
              ),
              width: 21,
              height: 21,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 23, left: 8),
            child: Container(
              width: 66,
              height: 69,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image:
                      AssetImage('assets/dagho.png'), // Path to the wound image
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 26),
                  child: Text(
                    'Dekubitus-03',
                    style: TextStyle(
                      color: Colors.orange, // Text color
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 84, top: 0),
                  child: Container(
                    height: 38,
                    width: 211,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 0, left: 8),
                          child: Text(
                            'Zuletzt dokumentiert am: 21.05.24',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6, left: 82),
                  child: Container(
                    height: 22,
                    width: 146,
                    decoration: BoxDecoration(
                        color: Color(0xff2260ff),
                        borderRadius: BorderRadius.all(Radius.circular(19))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 21, top: 1),
                      child: Row(
                        children: [
                          Text(
                            'Heilungsverlauf',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7),
                            child: Image(
                              image: AssetImage(
                                'assets/dil.png',
                              ),
                              width: 15,
                              height: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                width: 52,
                // color: Colors.white,
                height: 24,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 3,
                        right: 2,
                      ),
                      child: Container(
                        child: Image(
                          image: AssetImage('assets/star.png'),
                          width: 16,
                          height: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: Text(
                        '10',
                        style: TextStyle(
                          color: Color(0xff2260ff),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
