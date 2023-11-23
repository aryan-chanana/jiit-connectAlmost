import 'package:flutter/material.dart';
import 'package:homepage/front/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:homepage/Login Page/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'package:homepage/locator.dart';


Future main() async {

  setupServices();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String title = 'Login Page';
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        // home: BottomBar(),
        home: SplashScreen(),
      )
  );
}