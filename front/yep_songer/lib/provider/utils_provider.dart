import 'package:flutter/material.dart';

class UtilsProvider extends ChangeNotifier {
  late int _indexNavigation = 0;

  int get indexNavigation => _indexNavigation;

  void changeIndex(int newIndexNavigation) {
    _indexNavigation = newIndexNavigation;
    notifyListeners();
  }
}
