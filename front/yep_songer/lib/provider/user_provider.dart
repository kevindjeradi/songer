import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  late String _name;
  late String _email;
  late String _phone;
  late String _password;
  late String _token;
  late int _nbLikes;
  late int _score;

  String get name => _name;
  String get email => _email;
  String get phone => _phone;
  String get password => _password;
  String get token => _token;
  int get nbLikes => _nbLikes;
  int get score => _score;

  void setName(String newName) {
    _name = newName;
    notifyListeners();
  }

  void setEmail(String newEmail) {
    _email = newEmail;
    notifyListeners();
  }

  void setPhone(String newPhone) {
    _phone = newPhone;
    notifyListeners();
  }

  void setPassword(String newPassword) {
    _password = newPassword;
    notifyListeners();
  }

  void setNbLike(int nnblike) {
    _nbLikes = nnblike;
    notifyListeners();
  }

  void setToken(String newToken) {
    _token = newToken;
    notifyListeners();
  }
}
