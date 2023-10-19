import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/AddPatient.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/splash_Page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: "AIzaSyAyaW86iJF-2Zh0n0aukpgzK7Z9ff5jaPs",
    appId: "Y1:621591419878:android:401900529264c1499c1427",
    messagingSenderId: "621591419878",
    projectId: "therasense-391bb",
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      //routes: {
      //'/' :(context) => Auth(),
      //'homeScreen' :(context) => HomeScreen(),
      //'signupScreen' :(context) => SignUpForm(),
      //'signinScreen' :(context) => SignInForm(),
      // },
    );
  }
}
