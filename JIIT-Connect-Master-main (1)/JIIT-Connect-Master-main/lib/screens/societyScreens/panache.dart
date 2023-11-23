import 'package:flutter/material.dart';

class Panache extends StatelessWidget {
  const Panache({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "Panache", style: TextStyle(color: Colors.black),
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
                  "Panache, the vibrant and dynamic Fashion Society of Jaypee Institute of Information Technology located in Noida Sector 128, is a testament to the creativity and style that thrive within our campus. This document offers an extensive insight into Panache, its history, objectives, and the exciting events it conducts, all while spotlighting the dedicated members who drive its success.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage("assets/P1.png",),),
              SizedBox(height: 10,),
              Image(image: AssetImage("assets/P2.png",),),
              SizedBox(height: 10,),
              Image(image: AssetImage("assets/P3.png",),),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                    children: [
                      Text("Contact Us:",
                      style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "Shruti Gupta: 9520943XXX",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        " Vanshika Bajpai: 8126921XXX",
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