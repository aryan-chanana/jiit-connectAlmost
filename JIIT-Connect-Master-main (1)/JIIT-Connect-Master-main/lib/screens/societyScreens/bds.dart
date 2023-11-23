import 'package:flutter/material.dart';

class BDS extends StatelessWidget {
  const BDS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: const Text(
            "BDS", style: TextStyle(color: Colors.black),
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
                    "Bhangde De Sartaaj (BDS) is committed to celebrating and preserving the rich cultural heritage of Punjab, India, through the vibrant and energetic art of Bhangra. Over the years, our society has grown and evolved, making significant contributions to the college's cultural scene. We regularly organize Bhangra dance workshops and classes, accommodating all skill levels. It continues to be a dynamic, inclusive, and influential student organization, promoting the art of Bhangra and fostering unity and cultural appreciation within the college  community. We are excited about the possibilities that the future holds for our society and look forward to further enriching the cultural tapestry of our college.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Image(image: AssetImage("assets/bds1.jpg",),),
                SizedBox(height: 10,),
                Image(image: AssetImage("assets/bds2.jpg",),),
                SizedBox(height: 10,),
                Image(image: AssetImage("assets/bds3.jpg",),),
                SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("Contact Us:",
                        style: TextStyle(color: Colors.white, fontSize: 14,),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "Dhawal: 999XXXXXXX",
                        style: TextStyle(color: Colors.white, fontSize: 14,),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "Nitika: 999XXXXXXX",
                        style: TextStyle(color: Colors.white, fontSize: 14,),
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