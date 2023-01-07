import 'package:flutter/material.dart';

// id,email,name,
class AuthUserModel extends ChangeNotifier {
  String? _userId;
  String? _authToken;

  String get userId => _userId ?? "Guest";

  String get authToken => _authToken ?? 'xyz.wza.anan';

  // is Authenticated
  bool get isAuthenticated => _userId != null && _authToken != null;

  void login(String userId, String authToken) {
    _userId = userId;
    _authToken = authToken;
    notifyListeners();
  }

  void logout() {
    _userId = null;
    _authToken = null;
    notifyListeners();
  }
}
