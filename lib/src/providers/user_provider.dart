import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  String _user = 'admin';

  String get user => _user;

  void selectUser(String userChange) {
    _user = userChange;
    notifyListeners();
  }
}
