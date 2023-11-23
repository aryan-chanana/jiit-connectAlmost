import 'package:flutter/material.dart';

class ArtiJain extends StatelessWidget {
  const ArtiJain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "Teacher: Dr. Arti Jain", style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
       backgroundColor: Colors.black,
       body: const Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text("Dr. Arti Jain", style: TextStyle(color: Colors.white),),
            SizedBox(height: 20),
            Text("arti.jain@jiit.ac.in", style: TextStyle(color: Colors.white),),
            SizedBox(height: 20),
            Text("CSS Department", style: TextStyle(color: Colors.white),),
            SizedBox(height: 20),
            Text("Cabin: Room 234", style: TextStyle(color: Colors.white),),
            SizedBox(height: 20),
            Image(image: AssetImage("assets/ArtiJain.jpg",),),
            SizedBox(height: 20,),
          ],
        ),
      )
    );
  }
}
