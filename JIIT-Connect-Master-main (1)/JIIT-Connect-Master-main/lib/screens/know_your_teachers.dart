import 'package:flutter/material.dart';
import 'package:homepage/screens/teachersScreens/ambalikaSarkar.dart';
import 'package:homepage/screens/teachersScreens/artiJain.dart';
import 'package:homepage/screens/teachersScreens/ashishKumar.dart';
import 'package:homepage/screens/teachersScreens/charuGandhi.dart';
import 'package:homepage/screens/teachersScreens/himaniBansal.dart';
import 'package:homepage/screens/teachersScreens/mukeshSarswat.dart';
import 'package:homepage/widgets/teacherCard.dart';

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
        title: const Text(
            "Know Your Teachers",
            style: TextStyle(color: Colors.black,)
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [const Color.fromARGB(255, 173, 183, 235), const Color.fromARGB(255, 19, 36, 132)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          //borderRadius: const BorderRadius.all(Radius.circular(20))
        ),
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
                title: 'Dr. Charu Gandhi',
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