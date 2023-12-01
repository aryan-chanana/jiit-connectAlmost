import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Panache extends StatelessWidget {
  const Panache({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: const Text(
            "Panache",
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
                    "Panache, the vibrant and dynamic Fashion Society of Jaypee Institute of Information Technology located in Noida Sector 128, is a testament to the creativity and style that thrive within our campus. This document offers an extensive insight into Panache, its history, objectives, and the exciting events it conducts, all while spotlighting the dedicated members who drive its success.",
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
                    "assets/P1.png",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image(
                  image: AssetImage(
                    "assets/P2.png",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image(
                  image: AssetImage(
                    "assets/P3.png",
                  ),
                ),
                SizedBox(
                  height: 10,
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
                                    "https://instagram.com/panache_j128?igshid=OGQ5ZDc2ODk2ZA==");
                              },
                              child: const Text(
                                "@panache_j128",
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
                        "Shruti Gupta: 9520943XXX",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        " Vanshika Bajpai: 8126921XXX",
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