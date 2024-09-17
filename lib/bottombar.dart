import 'package:flutter/material.dart';

class bottombar extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const bottombar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Chat',
              backgroundColor: Colors.yellow,
            ),
          ],
          currentIndex: widget.currentIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: widget.onTap,
          elevation: 5,
        ),
      ),
    );
  }
}
