import 'package:flutter/material.dart';
import 'package:yep_songer/api/api_auth.dart';
import 'package:yep_songer/route/route.dart' as route;

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Theme.of(context).backgroundColor,
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "A la recherche d'inspi ?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Theme.of(context).highlightColor),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Il faut d'abord se connecter pour pouvoir en profiter",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Theme.of(context).highlightColor,
                          fontSize: 15),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/logos/logo.jpg'),
                  ),
                ),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    Navigator.pushNamed(context, route.loginPhone);
                  },
                  color: Colors.indigoAccent[400],
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(40)),
                  child: Text(
                    "Se connecter avec votre numéro de téléphone",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Theme.of(context).highlightColor),
                  ),
                ),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    Navigator.pushNamed(context, route.loginMail);
                  },
                  color: Colors.indigoAccent[400],
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(40)),
                  child: Text(
                    "Se connecter avec votre email",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Theme.of(context).highlightColor),
                  ),
                ),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    // Navigator.of(context).pushNamedAndRemoveUntil(
                    //     route.menuNav, (route) => false,
                    //     arguments: [0]);
                    Navigator.pushNamed(context, route.signUp);
                  },
                  color: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  child: Text(
                    "S'inscrire",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
