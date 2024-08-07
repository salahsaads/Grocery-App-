import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:grocery/Features/Home/prestion/view/HomeScreen.dart';
import 'package:grocery/Features/Login/presation/view/singin.dart';
import 'package:grocery/Features/SingUp/presation/view/SingUp.dart';

import 'Features/Nav/prestion/view/Nav.dart';

import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(brightness: Brightness.dark),
      routes: {
        'Singup': (context) => Singup(),
        'Singin': (context) => Singin(),
        'Homescreen': (context) => Homescreen()
      },
      home: Singup(),
    );
  }
}
