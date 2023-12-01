import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
            "Jyc",
          ),
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Jaypee Youth Club (JYC) serves as a crucial bridge between students and the college administration, fostering seamless communication. Committed to enhancing the college experience, JYC plays a pivotal role in addressing student concerns, facilitating dialogue, and ensuring that the student body's voice is heard. Through various initiatives and events, JYC strives to create a vibrant and inclusive campus environment.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Image(
                    image: AssetImage(
                      "assets/MukeshSaraswat.jpg",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Image(
                    image: AssetImage(
                      "assets/Tikkiwal.jpg",
                    ),
                    height: 200,
                    width: 200,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                                    "https://instagram.com/jiityouthclub128?igshid=OGQ5ZDc2ODk2ZA==");
                              },
                              child: Text(
                                "@jiityouthclub128",
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
                        "Mukesh Saraswat: mukesh.saraswat@jiit.ac.in",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Vinay Tikkiwal: vinay.anand@jiit.ac.in",
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