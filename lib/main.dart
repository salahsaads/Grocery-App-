import 'package:flutter/material.dart';
import 'package:grocery/Features/Login/presation/view/singin.dart';
import 'package:grocery/Features/SingUp/presation/view/SingUp.dart';
import 'package:grocery/Features/welcom/presation/view/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'Singup': (context) => Singup(),
        'Singin': (context) => Singin()
      },
      home: WelcomeScreen(),
    );
  }
}
