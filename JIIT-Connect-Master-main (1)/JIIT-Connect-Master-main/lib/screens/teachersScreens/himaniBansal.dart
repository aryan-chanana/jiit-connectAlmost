import 'package:flutter/material.dart';

class HimaniBansal extends StatelessWidget {
  const HimaniBansal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "Teacher: Himani Bansal", style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.black,
      body: const Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text("Dr. Himani Bansal", style: TextStyle(color: Colors.white),),
            SizedBox(height: 20),
            Text("himani.bansal@jiit.ac.in", style: TextStyle(color: Colors.white),),
            SizedBox(height: 20),
            Text("HSS Department", style: TextStyle(color: Colors.white),),
            SizedBox(height: 20),
            Text("Cabin: Room 234", style: TextStyle(color: Colors.white),),
            SizedBox(height: 20),
            SizedBox(height: 20,),
            Image(image: AssetImage("assets/HimaniBansal.jpg",),),
          ],
        ),
      )
    );
  }
}
