import 'package:facerecognition_flutter/front/home_screen.dart';
import 'package:facerecognition_flutter/front/bottom/profile_screen.dart';
import 'package:flutter/material.dart';
import '../../faceRecognition/firstSlide.dart';
import 'commentBox.dart';

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
    const FaceRecog(),
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
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.face,
              color: Colors.white,
            ),
            label: 'Find Who?',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.file_copy,
              color: Colors.white,
            ),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.white,
        onTap: onTapped,
      ),
    );
  }
}
