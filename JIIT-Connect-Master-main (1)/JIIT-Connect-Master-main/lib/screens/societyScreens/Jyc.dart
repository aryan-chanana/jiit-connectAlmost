import 'package:flutter/material.dart';

class Jyc extends StatefulWidget {
  const Jyc({super.key});

  @override
  State<Jyc> createState() => _JycState();
}

class _JycState extends State<Jyc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "JYC", style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.black,
      body: const SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "JYC",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage("assets/Tikkiwal.jpg",),),
              SizedBox(height: 10,),
              const Image(image: AssetImage("assets/MukeshSaraswat.jpg",),),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    children: [
                      Text("Contact Us:",
                      style: TextStyle(color: Colors.white),),
                      SizedBox(height: 8,),
                      Text(
                        "Mukesh Saraswat: mukesh.saraswat@jiit.ac.in",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      SizedBox(height: 10,),
                      Text(
                       "Vinay Tikkiwal: vinay.anand@jiit.ac.in",
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