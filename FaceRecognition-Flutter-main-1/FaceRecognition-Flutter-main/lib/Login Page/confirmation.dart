import 'package:facerecognition_flutter/Login%20Page/sign_up.dart';
import 'package:flutter/material.dart';

import '../screens/indicator.dart';

class ConfirmUser extends StatefulWidget {
  const ConfirmUser({Key? key}) : super(key: key);

  @override
  State<ConfirmUser> createState() => _ConfirmUser();
}

class _ConfirmUser extends State<ConfirmUser> {
  bool loading = false;

  @override
  void initState() {
    super.initState();
    _initializeServices();
  }

  _initializeServices() async {
    setState(() => loading = true);
    setState(() => loading = false);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: !loading
          ? SingleChildScrollView(child: SafeArea(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/googlebg.png"),
                    fit: BoxFit.cover,
                  )),
              child: Center(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const SizedBox(
                      height: 70,
                    ),
                    const Icon(
                      Icons.face,
                      color: Colors.white,
                    ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: const Column(
                      children: [
                        Text(
                          "Have You Registered yourself?",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => const SignUpWidget(),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.blue.withOpacity(0.1),
                                blurRadius: 1,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(
                              vertical: 14, horizontal: 16),
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'YES',
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.login, color: Colors.blueGrey)
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => BPage(),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueGrey,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.blue.withOpacity(0.1),
                                blurRadius: 1,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(
                              vertical: 14, horizontal: 16),
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'NOPE',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.person_add, color: Colors.white)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                        width: MediaQuery.of(context).size.width * 0.8,
                      ),
                    ],
                  )
                ],
              ),
          ),
            ),
        ),
      )
          : const Center(child: CircularProgressIndicator(),
      ),
    );
  }
}
