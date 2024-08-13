import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:grocery/Features/Home/prestion/view/HomeScreen.dart';
import 'package:grocery/Features/Singin/presation/view/singin.dart';
import 'package:grocery/Features/Nav/prestion/view/Nav.dart';
import 'package:grocery/Features/SingUp/presation/view/SingUp.dart';

import 'package:device_preview/device_preview.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? user;
  getuser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    user = await prefs.getString('token');
    print(user);
  }

  @override
  void initState() {
    // TODO: implement initState
    getuser();
    super.initState();
  }
  //Zz121213@

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(brightness: Brightness.dark),
      routes: {
        'Singup': (context) => Singup(),
        'Singin': (context) => Singin(),
        'Homescreen': (context) => Homescreen()
      },
      home: user == '0' || user == null ? Singin() : Nav(),
    );
  }
}
