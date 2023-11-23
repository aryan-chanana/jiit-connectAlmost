import 'package:flutter/material.dart';

class Abhivyakti extends StatefulWidget {
  const Abhivyakti({super.key});

  @override
  State<Abhivyakti> createState() => _AbhivyaktiState();
}

class _AbhivyaktiState extends State<Abhivyakti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "Abhivyakti", style: TextStyle(color: Colors.black),
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
                  "Abhivyakti, the Dramatics society, is dedicated to the art of dramatic expression. We bring stories to life on the streets and stages, creating thought-provoking and impactful performances. As a society, we aim to evoke emotions, spark conversations, and leave a lasting impact on the cultural scene.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage("assets/abhivyakti1.jpeg",),),
              SizedBox(height: 10,),
              Image(image: AssetImage("assets/abhivyakti2.jpeg",),),
              SizedBox(height: 10,),
              Image(image: AssetImage("assets/abhivyakti3.jpeg",),),
              SizedBox(height: 10,),
              Image(image: AssetImage("assets/abhivyakti4.jpeg",),),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                    children: [
                      Text("Contact Us:",
                      style: TextStyle(color: Colors.white),),
                      SizedBox(height: 8,),
                      Text(
                        "Aryan Chanana: 858599474X",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      SizedBox(height: 10,),
                      Text(
                       "Suyash Gupta: 817396834X",
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