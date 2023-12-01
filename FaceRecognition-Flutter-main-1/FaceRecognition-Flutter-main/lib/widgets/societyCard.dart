import 'package:flutter/material.dart';

class SocietyCard extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback onTap;
  const SocietyCard({
    super.key,
    required this.title,
    required this.onTap,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 4.0),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 80,
          width: MediaQuery.of(context).size.width,
          child: Card(
              color: Color.fromARGB(155, 6, 7, 7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              )
            // child: Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Text(
            //         title,
            //         style: const TextStyle(
            //           fontSize: 24,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ),
        ),
      ),
    );
  }
}