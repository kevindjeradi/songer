import 'package:flutter/material.dart';

class GenreProvider extends ChangeNotifier {
  late int index = 0;
  List<bool> isPostive = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  int get indexNavigation => index;

  void changeIndex(int newIndexNavigation) {
    index = newIndexNavigation;
    notifyListeners();
  }

  void changeBoolValue(int i) {
    isPostive[i] = !isPostive[i];
  }

  void incrementIndex(int i) {
    index = index + i;
  }

  void decrementIndex(int i) {
    index = index - i;
  }
}
