import 'package:flutter/material.dart';
import 'package:yep_songer/views/login/login_mail.dart';
import 'package:yep_songer/views/login/login_phone.dart';

import 'package:yep_songer/views/menu_navigation.dart';
import 'package:yep_songer/views/genres/genres.dart';
import 'package:yep_songer/views/reglages/reglages.dart';
import 'package:yep_songer/views/landing_page.dart';
import 'package:yep_songer/views/signup/signup.dart';

// Route Names
// Menu_navigation_bottom
const String menuNav = 'menu_nav';
// Login
const String landingPage = 'landingPage';
const String loginPhone = 'LoginPhone';
const String loginMail = 'login_mail';
const String signUp = 'SignUp';
// genres
const String genres = 'genres';
// reglages
const String reglages = "reglages";

// Control our page route flow
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case menuNav:
      List<dynamic> argMenuNavDetail = settings.arguments as List<dynamic>;
      return MaterialPageRoute(
          builder: (context) =>
              MenuNavigation(selectedIndexFirst: argMenuNavDetail[0]));

    case landingPage:
      return MaterialPageRoute(builder: (context) => const LandingPage());
    case signUp:
      return MaterialPageRoute(builder: (context) => SignUp());
    case loginPhone:
      return MaterialPageRoute(builder: (context) => LoginPhone());
    case loginMail:
      return MaterialPageRoute(builder: (context) => LoginMail());
    case genres:
      return MaterialPageRoute(builder: (context) => const Genres());
    case reglages:
      return MaterialPageRoute(builder: (context) => const Reglages());
    default:
      throw ('This route name does not exit');
  }
}
