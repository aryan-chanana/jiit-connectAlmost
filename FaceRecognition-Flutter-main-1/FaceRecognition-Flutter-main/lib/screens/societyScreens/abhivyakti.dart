import 'dart:io';

import 'package:flutter/material.dart';
//import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

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
            "Abhivyakti",
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
                SizedBox(
                  height: 20,
                ),
                const Image(
                  image: AssetImage(
                    "assets/abhivyakti1.jpeg",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Image(
                  image: AssetImage(
                    "assets/abhivyakti2.jpeg",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Image(
                  image: AssetImage(
                    "assets/abhivyakti3.jpeg",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Image(
                  image: AssetImage(
                    "assets/abhivyakti4.jpeg",
                  ),
                ),
                SizedBox(
                  height: 20,
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
                                    "https://instagram.com/abhivyaktidramasoc?igshid=OGQ5ZDc2ODk2ZA==");
                              },
                              child: Text(
                                "@abhivyaktidramasoc",
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
                        "Aryan Chanana: 858599474X",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Suyash Gupta: 817396834X",
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