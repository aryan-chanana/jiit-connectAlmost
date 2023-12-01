import 'package:flutter/material.dart';

class AshishKumar extends StatelessWidget {
  const AshishKumar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Text(
            "Teacher: Dr. Ashish Kumar",
          ),
        ),
        //backgroundColor: Colors.black,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/tbg3.png"),
                fit: BoxFit.cover,
              )),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 170,
                    width: 400,
                    child: Card(
                      color: const Color.fromARGB(64, 178, 190, 230),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Column(
                          children: [
                            SizedBox(height: 20),
                            Text(
                              "Dr. Ashish Kumar",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "ashish.kumar@mail.jiit.ac.in",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "CS Department",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Cabin: Room 25",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Image(
                    image: AssetImage(
                      "assets/AshishKumar.jpg",
                    ),
                    height: 300,
                    width: 300,
                    colorBlendMode: BlendMode.color,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}