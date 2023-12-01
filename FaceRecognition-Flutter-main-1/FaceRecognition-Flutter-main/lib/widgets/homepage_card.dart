import 'package:flutter/material.dart';

class HomePageCard extends StatelessWidget {
  final String title;
  final String image;
  final String subtitle;
  final VoidCallback onTap;
  const HomePageCard(
      {super.key,
        required this.title,
        required this.onTap,
        required this.image,
        required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 230,
          width: MediaQuery.of(context).size.width,
          child: Card(
            color: Color.fromARGB(103, 6, 7, 7),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    subtitle,
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  //   child: Stack(
                  //     children: [
                  //       Image.asset(image),
                  //       Positioned(
                  //         top: 20,
                  //         child: Text(
                  //           "Location",
                  //         style: TextStyle(
                  //           fontSize: 35,
                  //         ),
                  //        ),
                  //       )
                  //    ],
                  //  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}