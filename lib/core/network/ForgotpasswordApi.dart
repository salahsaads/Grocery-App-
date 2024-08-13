import 'package:grocery/core/EndpontApi/EndPointApi.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // لتحويل JSON إلى خريطة

class ForgotpasswordApi {
  Future<String> Forgotpassword({
    required String email,
  }) async {
    String apiUrl = Endpointapi().Forgotpassword;

    Map<String, dynamic> datauser = {
      "Email": email,
    };

    try {
      final response = await http.post(Uri.parse(apiUrl),
          body: jsonEncode(datauser), // تحويل البيانات إلى JSON
          headers: {"Content-Type": "application/json"}); // تحديد نوع المحتوى
      final String re = jsonDecode(response.body);
      if (response.statusCode == 200) {
        // إذا كانت الاستجابة ناجحة (رمز الحالة 200)
        return re;
      } else {
        // التعامل مع الاستجابة الفاشلة (رمز الحالة ليس 200)
        print('Failed to sign up: ${response.statusCode}');
        return re;
      }
    } catch (e) {
      // التعامل مع الأخطاء أثناء الاتصال
      print('Error occurred: $e');
      return 'No';
    }
  }
}
