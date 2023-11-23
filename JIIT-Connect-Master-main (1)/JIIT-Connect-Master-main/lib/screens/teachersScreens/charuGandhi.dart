import 'package:flutter/material.dart';

class CharuGandhi extends StatelessWidget {
  const CharuGandhi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "Teacher: Charu Gandhi", style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.black,
      body: const Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text("Charu Gandhi", style: TextStyle(color: Colors.white),),
            SizedBox(height: 20),
            Text("charu.gandhi@jiit.ac.in", style: TextStyle(color: Colors.white),),
            SizedBox(height: 20),
            Text("CSS Department", style: TextStyle(color: Colors.white),),
            SizedBox(height: 20),
            Text("Cabin: Room 234", style: TextStyle(color: Colors.white),),
            SizedBox(height: 20),
            SizedBox(height: 20,),
            Image(image: AssetImage("assets/CharuGandhi.jpg",),),
            SizedBox(height: 20),
          ],
        ),
      )
    );
  }
}
