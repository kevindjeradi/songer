import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:yep_songer/api/api_auth.dart';
import 'package:yep_songer/provider/user_provider.dart';
import 'package:yep_songer/route/route.dart' as route;
import 'package:yep_songer/views/menu_navigation.dart';

class LoginPhone extends StatelessWidget {
  LoginPhone({Key? key}) : super(key: key);
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).backgroundColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Theme.of(context).highlightColor,
            )),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Column(
                  children: [
                    Text(
                      "Bon retour !",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).highlightColor),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Connectez vous",
                      style: TextStyle(
                        fontSize: 15,
                        color: Theme.of(context).highlightColor,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      makeInput(
                          context: context,
                          label: "Numéro de téléphone",
                          controller: phoneController),
                      makeInput(
                          context: context,
                          label: "Mot de passe",
                          controller: passwordController,
                          obsureText: true),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    padding: const EdgeInsets.only(top: 3, left: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border(
                            bottom: BorderSide(
                                color: Theme.of(context).highlightColor),
                            top: BorderSide(
                                color: Theme.of(context).highlightColor),
                            right: BorderSide(
                                color: Theme.of(context).highlightColor),
                            left: BorderSide(
                                color: Theme.of(context).highlightColor))),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        user.setPhone(phoneController.text);
                        user.setPassword(passwordController.text);
                        Api.login(context: context, type: "phone");
                        // Navigator.pushReplacement(
                        //   context,
                        //   PageRouteBuilder(
                        //     pageBuilder: (context, animation1, animation2) =>
                        //         const MenuNavigation(selectedIndexFirst: 0),
                        //     transitionDuration: Duration.zero,
                        //     reverseTransitionDuration: Duration.zero,
                        //   ),
                        // );
                      },
                      color: Colors.indigoAccent[400],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: Text(
                        "Valider",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Theme.of(context).highlightColor),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Vous n'avez pas de compte ?"),
                    MaterialButton(
                      height: 60,
                      onPressed: () {
                        Navigator.pushNamed(context, route.signUp);
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: const Text(
                        "Inscrivez vous",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget makeInput({context, controller, label, obsureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Theme.of(context).highlightColor),
      ),
      const SizedBox(
        height: 5,
      ),
      TextField(
        controller: controller,
        obscureText: obsureText,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).highlightColor,
            ),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).highlightColor)),
        ),
      ),
      const SizedBox(
        height: 30,
      )
    ],
  );
}
