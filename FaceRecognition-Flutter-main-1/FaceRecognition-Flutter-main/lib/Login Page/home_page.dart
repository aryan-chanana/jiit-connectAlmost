import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'confirmation.dart';
import 'package:facerecognition_flutter/front/bottom/bottom_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build (BuildContext context) => Scaffold(
    body: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        else if (snapshot.hasData) {
          return BottomBar();
        }
        else if (snapshot.hasError) {
          return const Center(child: Text('Something went wrong!'));
        }
        else {
          // return const SignUpWidget();
          return const ConfirmUser();
        }
      }
    ),
  );
}