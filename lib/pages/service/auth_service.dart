import 'dart:convert';
import 'package:flutter_application_1/models/user_models.dart';
import 'package:http/http.dart' as http;

class AuthService {
  Uri loginurl = Uri.parse("https://api.despoinalabs.com/api/login");

  Future<UserModel> login(
      {required String email, required String password}) async {
    var url = loginurl;
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'email': email,
      'password': password,
    });

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer' + data['access_token'];

      return user;
    } else {
      throw Exception('Gagal Login!');
    }
  }
}
