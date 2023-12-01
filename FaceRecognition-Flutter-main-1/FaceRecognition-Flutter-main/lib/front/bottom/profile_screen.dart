import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:facerecognition_flutter/Login Page/google_sign_in.dart';
import 'package:provider/provider.dart';

class LoggedInWidget extends StatelessWidget {

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logged In', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {
                final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.logout(context);
              },
            style: TextButton.styleFrom(
              backgroundColor: Colors.white30,  // Button color
            ),
            child: const Text('Logout',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/4k-ultra-hd-dark-phone-o6b5qokskey49dz2.jpg"),
              fit: BoxFit.cover,
            )),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Profile',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            const SizedBox(height: 32),
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(user.photoURL!),

            ),
            const SizedBox(height: 8),
            Text(
              'Name: ${user.displayName!}',
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              'Email: ${user.email}',
              style: const TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}