import 'package:homepage/front/home_screen.dart';
import 'package:homepage/front/bottom/profile_screen.dart';
import 'package:flutter/material.dart';
import 'commentBox.dart';
import 'package:homepage/front/bottom/face_recognition/pages/home.dart';

class BottomBar extends StatefulWidget {
  int passedIndex;
  BottomBar({
    Key? key,
    this.passedIndex = 0,
  }) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    int selectedIndex = widget.passedIndex;
  }

  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  static final List<Widget> _screens = <Widget>[
    const HomeScreen(),
    const LocationHome(),
    // const HomeScreen(),
    const commentBox(),
    LoggedInWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.face,
              color: Colors.black,
            ),
            label: 'Find Who?',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.file_copy,
              color: Colors.black,
            ),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.black,
        onTap: onTapped,
      ),
    );
  }
}
