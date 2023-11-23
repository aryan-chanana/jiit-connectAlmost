import 'package:homepage/front/bottom/face_recognition/pages/models/user.model.dart';
import 'package:flutter/material.dart';

class SignInSheet extends StatelessWidget {
  SignInSheet({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text(
              'The person being shown is , ${user.user}.',
              style: const TextStyle(fontSize: 20),
            ),
          ),
          Container(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Text('password: ${user.password}'),
                const SizedBox(height: 10),
                const Divider(),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
