import 'package:flutter/material.dart';
import 'package:facerecognition_flutter/screens/societyScreens/Jyc.dart';
import 'package:facerecognition_flutter/screens/societyScreens/abhivyakti.dart';
import 'package:facerecognition_flutter/screens/societyScreens/ffortissimo.dart';
import 'package:facerecognition_flutter/screens/societyScreens/panache.dart';
import 'package:facerecognition_flutter/screens/societyScreens/bds.dart';
import 'package:facerecognition_flutter/widgets/societyCard.dart';

class HubsScreen extends StatefulWidget {
  const HubsScreen({super.key});

  @override
  State<HubsScreen> createState() => _HubsScreenState();
}

class _HubsScreenState extends State<HubsScreen> {

  navigatetoJyc() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Jyc(),
      ),
    );
  }

  navigatetoAbhivyakti() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Abhivyakti(),
      ),
    );
  }

  navigatetoFfortissiomo() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Ffortissimo(),
      ),
    );
  }

  navigatetoPanache() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Panache(),
      ),
    );
  }

  navigatetoPrismatic() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const BDS(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: const Text(
          "Hubs and Societies", style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/teacherbg.png"),
              fit: BoxFit.cover,
            ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SocietyCard(
                title: 'JYC',
                image: "",
                onTap: navigatetoJyc,
              ),
              SocietyCard(
                title: 'Abhivyakti',
                image: "",
                onTap: navigatetoAbhivyakti,
              ),
              SocietyCard(
                title: 'BDS',
                image: "",
                onTap: navigatetoPrismatic,
              ),
              SocietyCard(
                title: 'Ffortissimo',
                image: "",
                onTap: navigatetoFfortissiomo,
              ),
              SocietyCard(
                title: 'Panache',
                image: "",
                onTap: navigatetoPanache,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
