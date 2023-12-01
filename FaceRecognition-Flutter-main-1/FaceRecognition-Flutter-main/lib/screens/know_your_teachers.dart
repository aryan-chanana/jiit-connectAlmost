import 'package:flutter/material.dart';
import 'package:facerecognition_flutter/screens/teachersScreens/ambalikaSarkar.dart';
import 'package:facerecognition_flutter/screens/teachersScreens/artiJain.dart';
import 'package:facerecognition_flutter/screens/teachersScreens/ashishKumar.dart';
import 'package:facerecognition_flutter/screens/teachersScreens/charuGandhi.dart';
import 'package:facerecognition_flutter/screens/teachersScreens/himaniBansal.dart';
import 'package:facerecognition_flutter/screens/teachersScreens/mukeshSarswat.dart';
import 'package:facerecognition_flutter/widgets/teacherCard.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  navigatetoArtiJain() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ArtiJain(),
      ),
    );
  }

  navigatetoMukeshSarswat() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MukeshSaraswat(),
      ),
    );
  }

  navigatetoAmbalikaSarkar() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AmbalikaSarkar(),
      ),
    );
  }

  navigatetoCharuGandhi() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const CharuGandhi(),
      ),
    );
  }

  navigatetoHimaniBansal() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HimaniBansal(),
      ),
    );
  }

  navigatetoAshishKumar() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AshishKumar(),
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
        title: const Text("Know Your Teachers",
            style: TextStyle(
              color: Colors.white,
            )),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/hubbg.png"),
              fit: BoxFit.cover,
            )),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TeacherCard(
                title: 'Dr. Arti Jain',
                image: "",
                onTap: navigatetoArtiJain,
              ),
              TeacherCard(
                title: 'Dr. Mukesh Saraswat',
                image: "",
                onTap: navigatetoMukeshSarswat,
              ),
              TeacherCard(
                title: 'Dr. Ambalika Sarkar',
                image: "",
                onTap: navigatetoAmbalikaSarkar,
              ),
              TeacherCard(
                title: 'Prof. Charu Gandhi',
                image: "",
                onTap: navigatetoCharuGandhi,
              ),
              TeacherCard(
                title: 'Dr. Himani Bansal',
                image: "",
                onTap: navigatetoHimaniBansal,
              ),
              TeacherCard(
                title: 'Dr. Ashish Kumar',
                image: "",
                onTap: navigatetoAshishKumar,
              ),
            ],
          ),
        ),
      ),
    );
  }
}