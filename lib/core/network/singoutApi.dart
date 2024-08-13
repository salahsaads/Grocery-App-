import 'package:grocery/core/EndpontApi/EndPointApi.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SignoutApi {
  Future<String> signout() async {
    String apiUrl = Endpointapi().SingOut;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
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
        // إذا كانت الاستجابة ناجحة (رمز الحالة 200)
        return 'Logout';
      } else {
        // التعامل مع الاستجابة الفاشلة (رمز الحالة ليس 200)
        print('Failed to sign out: ${response.statusCode}');
        return jsonDecode(response.body).toString();
      }
    } catch (e) {
      // التعامل مع الأخطاء أثناء الاتصال
      print('Error occurred: $e');
      return 'No';
    }
  }
}
