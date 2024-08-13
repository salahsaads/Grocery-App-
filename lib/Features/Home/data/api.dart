import 'package:grocery/core/EndpontApi/EndPointApi.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

Future<List<dynamic>> getAllCategories() async {
  final url = Endpointapi().Get_All_Categories;
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString('token');
  try {
    if (token == null || token.isEmpty) {
      throw Exception('No token found. Please log in again.');
    }

    final response = await http.get(
      Uri.parse(url),
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data;
    } else if (response.statusCode == 401) {
      // Handle 401 Unauthorized separately
      throw Exception('Unauthorized: Please check your token or log in again.');
    } else {
      throw Exception('Failed to load categories: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching categories: $e');
    throw Exception('Error fetching categories: $e');
  }
}
