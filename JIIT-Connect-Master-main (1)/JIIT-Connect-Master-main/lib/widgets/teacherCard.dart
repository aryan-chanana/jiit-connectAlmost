import 'package:flutter/material.dart';

class TeacherCard extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback onTap;
  const TeacherCard({
    super.key,
    required this.title,
    required this.onTap,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 70,
          width: MediaQuery.of(context).size.width,
          child: Card(
              color: Color.fromARGB(255, 210, 209, 209),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
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
