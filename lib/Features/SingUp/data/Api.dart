import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import '../../../core/EndpontApi/EndPointApi.dart'; // لتحويل JSON إلى خريطة

class ApiSingUp {
  Future<String> singUp(
      {required String email,
      required String username,
      required String phone,
      required String password,
      required String password2,
      required String address}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String apiUrl = Endpointapi().SingUpEndPoint;

    Map<String, dynamic> datauser = {
      "Email": email,
      "Username": username,
      "Phone": phone,
      "Password": password,
      "PasswordConfirm": password2,
      "AppRole": 1,
      "City": "Cairo",
      "Address": address,
      "PostalCode": 1234
    };

    try {
      final response = await http.post(Uri.parse(apiUrl),
          body: jsonEncode(datauser), // تحويل البيانات إلى JSON
          headers: <String, String>{
            "Content-Type": "application/json; charset=UTF-8"
          }); // تحديد نوع المحتوى

      if (response.statusCode == 200) {
        // إذا كانت الاستجابة ناجحة (رمز الحالة 200)
        print(
            '============================================================salah');

        var jsonResponse = json.decode(response.body);
        var token = jsonResponse['token'];
        await prefs.setString('token', token);
        await prefs.setString('userid', jsonResponse['userID']);

        return 'User SingUp';
      } else {
        // التعامل مع الاستجابة الفاشلة (رمز الحالة ليس 200)
        print('Failed to sign up: ${response.statusCode}');
        return ('Failed to sign up: ${response.statusCode}');
      }
    } catch (e) {
      // التعامل مع الأخطاء أثناء الاتصال
      print('Error occurred: $e');
      return ('Error occurred: $e');
    }
  }
}
