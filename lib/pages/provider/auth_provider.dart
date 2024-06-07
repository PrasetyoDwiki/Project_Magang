import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user_models.dart';
import 'package:flutter_application_1/service/auth_service.dart';

class AuthProvider with ChangeNotifier {
  late UserModel _user;

  UserModel get user => _user;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> login({
    required String email,
    required String password,
  }) async {
    try {
      UserModel user =
          await AuthService().login(email: email, password: password);

      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
