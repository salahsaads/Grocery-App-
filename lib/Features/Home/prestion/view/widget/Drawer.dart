import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery/Features/Singin/presation/view/singin.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:http/http.dart' as http;

import '../../../../../core/EndpontApi/EndPointApi.dart';
import '../../../../../core/utils/thema/AooColor.dart';
import '../../view_model/UserModel.dart';

class UserDrawer extends StatelessWidget {
  final User user;
  final OnTap;
  UserDrawer({required this.user, required this.OnTap});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              color1!,
              color2!,
              color2!,
              Colors.white,
              Colors.white,
              color2!,
              color2!,
              color1!,
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Salah'),
              onTap: () {
                // Handle navigation
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Eamil'),
              onTap: () {
                // Handle navigation
              },
            ),
            ListTile(
              leading: Icon(Icons.location_city),
              title: Text('aga'),
              onTap: () {
                // Handle navigation
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () async {
                String apiUrl = Endpointapi().SingOut;
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                final String? token = prefs.getString('token');

                try {
                  final response = await http.post(
                    Uri.parse(apiUrl),
                    headers: {
                      'Authorization': 'Bearer $token',
                      'Content-Type': 'application/json',
                    },
                  );

                  if (response.statusCode == 200) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Singin()),
                    );
                  } else {
                    // التعامل مع الاستجابة الفاشلة (رمز الحالة ليس 200)
                    print('Failed to sign out: ${response.statusCode}');
                  }
                } catch (e) {
                  // التعامل مع الأخطاء أثناء الاتصال
                  print('Error occurred: $e');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
