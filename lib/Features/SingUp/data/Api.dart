import 'package:flutter/material.dart';
import 'package:grocery/core/EndpontApi/EndPointApi.dart';
import '../presation/view_model/post_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // لتحويل JSON إلى خريطة

class ApiSingUp {
  Future<PostModel?> singUp(
      {required String email,
      required String username,
      required String phone,
      required String password,
      required String password2,
      required String address}) async {
    String apiUrl =
        Endpointapi.SingUpEndPoint;

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
          headers: {"Content-Type": "application/json"}); // تحديد نوع المحتوى

      if (response.statusCode == 200) {
        // إذا كانت الاستجابة ناجحة (رمز الحالة 200)
        return PostModel.fromJson(jsonDecode(response.body));
      } else {
        // التعامل مع الاستجابة الفاشلة (رمز الحالة ليس 200)
        print('Failed to sign up: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      // التعامل مع الأخطاء أثناء الاتصال
      print('Error occurred: $e');
      return null;
    }
  }
}
