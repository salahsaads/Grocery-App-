import 'dart:async';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

Stream<List<dynamic>> getSimilarProducts(String id) async* {
  String getCategoriesUrl =
      "https://ac30-197-63-24-111.ngrok-free.app/api/products/similar/$id";
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString('token');

  if (token == null || token.isEmpty) {
    throw Exception('No token found. Please log in again.');
  }

  try {
    final response = await http.get(
      Uri.parse(getCategoriesUrl),
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      // Assuming `data` contains a list of products
      if (data is List) {
        yield data; // Emit the data to the stream
      } else {
        throw Exception('Unexpected data format');
      }
    } else if (response.statusCode == 401) {
      throw Exception('Unauthorized: Please check your token or log in again.');
    } else {
      throw Exception('Failed to load categories: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching categories: $e');
    throw Exception('Error fetching categories: $e');
  }
}
