import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Colors.black,
  highlightColor: Colors.white,
  indicatorColor: Colors.red,
  bottomAppBarColor: const Color(0xFF212121),
  brightness: Brightness.dark,
  backgroundColor: const Color(0xFF212121),
  canvasColor: const Color(0xFF212121),
  dividerColor: Colors.black12,
);

final lightTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Colors.white,
  highlightColor: Colors.black,
  indicatorColor: Colors.white,
  bottomAppBarColor: Colors.red,
  brightness: Brightness.light,
  backgroundColor: Colors.white,
  canvasColor: Colors.white,
  dividerColor: Colors.white54,
);

class ThemeNotifier with ChangeNotifier {
  ThemeData _themeData;

  ThemeNotifier(this._themeData);

  getTheme() => _themeData;

  setTheme(ThemeData themeData) async {
    _themeData = themeData;
    notifyListeners();
  }
}
