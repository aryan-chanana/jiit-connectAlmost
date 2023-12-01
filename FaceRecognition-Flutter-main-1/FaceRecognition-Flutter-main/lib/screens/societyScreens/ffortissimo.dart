import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Ffortissimo extends StatelessWidget {
  const Ffortissimo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: const Text(
            "Ffortissimo",
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
                    "FORTISSIMO THE MUSIC SOCIETY OF JIIT-128 is a vibrant and inclusive community that thrives on the harmonious fusion of musical talents and passion. Comprising dedicated students and faculty members, our society hosts a range of events throughout the academic year. These events include weekly jamming sessions, where members can collaborate and share their musical skills, as well as large concerts and recitals that showcase our diverse musical repertoire.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Image(
                  image: AssetImage(
                    "assets/Ff1.png",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image(
                  image: AssetImage(
                    "assets/Ff2.png",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image(
                  image: AssetImage(
                    "assets/Ff3.png",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image(
                  image: AssetImage(
                    "assets/Ff4.png",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
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
                                    "https://instagram.com/ffortissimo_j128?igshid=OGQ5ZDc2ODk2ZA==");
                              },
                              child: Text(
                                "@ffortissimo_j128",
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
                        height: 10,
                      ),
                      Text(
                        "Tanya Sharma: 97738680XX",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        " Rohil : 97521079XX",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
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