import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginProvider extends ChangeNotifier {
  String? name;
  String? get getName => name;

  void updateUserName() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    name = sharedPreferences.getString("name");
    notifyListeners();
  }
}
