import 'package:homepage/Location/connectScreen.dart';
import 'package:homepage/screens/hubsScreen.dart';
import 'package:homepage/screens/know_your_teachers.dart';
import 'package:homepage/widgets/homepage_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  navigateLocation() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const LocationScreen(),
      ),
    );
  }

  navigateHub() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HubsScreen(),
      ),
    );
  }

  navigateConnect() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ConnectScreen(),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            "Connect with us!",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.black,
        body: Container(
          decoration: BoxDecoration(
              color: Colors.black12,
              border: Border.all(
                color: Colors.black12,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HomePageCard(
                  title: 'Know Your Teacher',
                  subtitle:'Get your teachers details and solve your queries throgh them.',
                  image: "assets/images/college1.png",
                  onTap: navigateLocation,
                ),
                HomePageCard(
                  title: 'Hubs & Socities',
                  subtitle:'Discover the full range of student societies, then connect with other students who share your passions and interests. Amplify your extracurricular activities and identify your niche.',
                  image: "",
                  onTap: navigateHub,
                ),
                HomePageCard(
                  title: 'Find my classroom',
                  subtitle:'Access to people is just a touch away with JIIT Connect. Reach out to peers who need you and who you need for your projects.',
                  image: "",
                  onTap: navigateConnect,
                ),
              ],
            ),
          ),
        ));
  }
}