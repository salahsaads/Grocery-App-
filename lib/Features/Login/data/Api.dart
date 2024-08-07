import 'package:grocery/core/EndpontApi/EndPointApi.dart';
import '../../SingUp/presation/view_model/post_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // لتحويل JSON إلى خريطة

class ApiSinin {
  Future<PostModel?> singUp({
    required String username,
    required String password,
  }) async {
    String apiUrl = Endpointapi.SinginEndPoint;

    Map<String, dynamic> datauser = {
      "Username": username,
      "Password": password,
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
