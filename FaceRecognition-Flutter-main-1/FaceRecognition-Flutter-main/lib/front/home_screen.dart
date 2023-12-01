import 'package:facerecognition_flutter/screens/Notification.dart';
import 'package:facerecognition_flutter/Location/connectScreen.dart';
import 'package:facerecognition_flutter/screens/hubsScreen.dart';
import 'package:facerecognition_flutter/screens/know_your_teachers.dart';
import 'package:facerecognition_flutter/widgets/homepage_card.dart';
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

  navigateNotification() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const NotificationScreen(),
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
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        //backgroundColor: Colors.black,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/locationbg.jpg"),
                fit: BoxFit.cover,
              ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HomePageCard(
                  title: 'Know Your Teacher',
                  subtitle:'Get to know, where you can find your teacher and solve queries and doubts adeptly through their guidance.',
                  image: "assets/images/college1.png",
                  onTap: navigateLocation,
                ),
                HomePageCard(
                  title: 'Hubs & Societies',
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
                HomePageCard(
                  title: 'Upcoming Events',
                  subtitle: 'Whats new? Get to know about upcoming hackathon, events and anything interesting brewing in the college.',
                  image: "",
                  onTap: navigateNotification,
                ),
              ],
            ),
          ),
        )
    );
  }
}