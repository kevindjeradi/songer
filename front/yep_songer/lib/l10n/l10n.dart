import 'package:flutter/material.dart';

class L10n {
  static final all = [const Locale('fr'), const Locale('en')];

  static String getFlag(String code) {
    switch (code) {
      case 'fr':
        return 'fr';
      case 'en':
        return 'en';
      default:
        return 'fr';
    }
  }
}
