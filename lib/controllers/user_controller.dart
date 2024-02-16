import 'dart:convert';
import 'package:demo_api/models/user_model.dart';
import 'package:http/http.dart' as http;

class UserController {
  Future<UserModel> fetchRandomUser() async {
    final response = await http
        .get(Uri.parse('https://random-data-api.com/api/users/random_user'));
    if (response.statusCode == 200) {
      return UserModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load random user');
    }
  }
}
