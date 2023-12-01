import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BDS extends StatelessWidget {
  const BDS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Text(
            "BDS",
          ),
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
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
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Card(
                          color: Colors.white,
                          child: TextButton(
                              onPressed: () async {
                                await Future.delayed(
                                    const Duration(milliseconds: 1000));
                                _launchURL(
                                    "https://docs.google.com/forms/d/e/1FAIpQLSd1V2-GFmOSDVNSzgD1Y7nt16XlGbmpld0wYUnw7nV2DEb8Pw/viewform");
                              },
                              child: Text(
                                "Link For Registration",
                                style:
                                TextStyle(fontSize: 14, color: Colors.blue),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Card(
                          color: Colors.white,
                          child: TextButton(
                              onPressed: () async {
                                await Future.delayed(
                                    const Duration(milliseconds: 1000));
                                _launchURL(
                                    "https://instagram.com/bhangde_de_sartaaj?igshid=MTk0NTkyODZkYg==");
                              },
                              child: Text(
                                "@bhangde_de_sartaaj",
                                style:
                                TextStyle(fontSize: 14, color: Colors.blue),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Contact Us:",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Dhawal Bisht: 93108276xx",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Nitika Sobti: 70426402xx",
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

  _launchURL(String address) async {
    final Uri url = Uri.parse(address);

    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        if (!await launchUrl(url)) {
          throw Exception('Could not launch $url');
        }
      }
    } on SocketException catch (_) {}
  }
}