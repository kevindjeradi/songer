import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:yep_songer/components/custom_snack_bar.dart';
import 'package:yep_songer/components/layout/swipe_cards/profile.dart';
import 'package:yep_songer/provider/user_provider.dart';
import 'package:yep_songer/views/menu_navigation.dart';

class Api {
  static dynamic adAccessToken;
  static dynamic litToken;
  static Map<String, dynamic> tokenDecode = {};

  static Future<bool> register({context}) async {
    final user = Provider.of<UserProvider>(context, listen: false);

    try {
      print(user.name + user.email + user.phone + user.password);
      var reponse = await http
          .post(Uri.parse("http://10.0.2.2:3000/user/register"), headers: {
        "Accept": "application/vnd.project.api+json;version=1",
      }, body: {
        "pseudo": user.name,
        "email": user.email,
        "phone": user.phone,
        "password": user.password
      });
      print("\n\n------------------------------>\n\n");
      print(reponse.body);
      return true;
    } catch (e) {
      // ignore: avoid_print
      print("$e ERREUR");
      return false;
    }
  }

  static Future<bool> login({context, type}) async {
    final user = Provider.of<UserProvider>(context, listen: false);
    late String requestValue;
    late String request;
    late dynamic data;

    try {
      switch (type) {
        case "email":
          requestValue = user.email;
          request = "authenticateByEmail";
          break;
        case "phone":
          print("\n\n-------------->${user.phone}");
          requestValue = user.phone;
          print("\n\n-------------->$requestValue");
          request = "authenticateByPhone";
          break;
        case "pseudo":
          requestValue = user.name;
          request = "authenticateByPseudo";
          break;
        default:
      }
      print("\n\n\n----------------------------------------> avant le call");

      var response = await http
          .post(Uri.parse("http://10.0.2.2:3000/user/$request"), headers: {
        "Accept":
            "application/vndhttp://10.0.2.2:3000/user/.project.api+json;version=1",
      }, body: {
        "type": requestValue,
        "password": user.password
      });

      if (response.body != "") {
        print("\n\n$requestValue - ${user.password}");
        print(
            "\n\n---------------------------------------->\n${response.body}");

        user.setToken(response.body);
        data = jsonDecode(response.body);

        user.setName(data['pseudo']);
        user.setEmail(data['email']);
        user.setPhone(data['phone']);
        user.setNbLike(data['like_numb']);

        print("\n\n");
        print(data['pseudo']);
        print(data['email']);
        print(data['phone']);
        print(data['like_numb']);

        Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) =>
                  const MenuNavigation(selectedIndexFirst: 0),
              transitionDuration: Duration.zero,
              reverseTransitionDuration: Duration.zero,
            ));
      } else {
        customSnackBar(text: "Connexion impossible", type: "error");
        return false;
      }
      return true;
    } catch (e) {
      print(
          "\n\n\n----------------------------------------> catch  \n\n\n---------------------------------------->");

      // ignore: avoid_print
      print("$e ERREUR");
      return false;
    }
  }

  static Future<dynamic> getTrack({context}) async {
    try {
      var reponse =
          await http.get(Uri.parse("http://10.0.2.2:3000/track"), headers: {
        "Accept": "application/vnd.project.api+json;version=1",
      });
      print("\n\n------------------------------>\n\n");
      print(reponse.body);
      return jsonDecode(reponse.body);
    } catch (e) {
      // ignore: avoid_print
      print("$e ERREUR");
      throw (Exception("Failed to load songs"));
    }
  }

  static Future<bool> logout() async {
    try {
      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  // static Future<String?> getToken() async {

  // }
}
