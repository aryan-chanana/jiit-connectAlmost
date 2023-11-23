import 'package:flutter/material.dart';

class Ffortissimo extends StatelessWidget {
  const Ffortissimo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "Ffortissimo", style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.black,
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "FFORTISSIMO THE MUSIC SOCIETY OF JIIT-128 is a vibrant and inclusive community that thrives on the harmonious fusion of musical talents and passion. Comprising dedicated students and faculty members, our society hosts a range of events throughout the academic year. These events include weekly jamming sessions, where members can collaborate and share their musical skills, as well as large concerts and recitals that showcase our diverse musical repertoire.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage("assets/Ff1.png",),),
              SizedBox(height: 10,),
              Image(image: AssetImage("assets/Ff2.png",),),
              SizedBox(height: 10,),
              Image(image: AssetImage("assets/Ff3.png",),),
              SizedBox(height: 10,),
              Image(image: AssetImage("assets/Ff4.png",),),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                    children: [
                      Text("Contact Us:",
                      style: TextStyle(color: Colors.white),),
                      SizedBox(height: 10,),
                      Text(
                        "Tanya Sharma: 97738680XX",
                        style: TextStyle(fontSize: 14,color: Colors.white),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        " Rohil : 97521079XX",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
            
              SizedBox(height: 20,),
            ],
          ),
        ),
      )
    );
  }
}