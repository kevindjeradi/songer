import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:email_validator/email_validator.dart';
import 'package:yep_songer/api/api_auth.dart';
import 'package:yep_songer/provider/user_provider.dart';
import 'package:yep_songer/themes/colors/customcolors.dart';
import 'package:yep_songer/route/route.dart' as route;

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmController = TextEditingController();
  final validate = [false, false, false, false, false];
  late final errorText = ["", "", "", "", ""];

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context);
    late var register = false;

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "S'inscrire",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Créer votre compte",
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
                              label: "Pseudo",
                              controller: nameController,
                              errorText: errorText[0],
                              validate: validate[0]),
                          makeInput(
                              context: context,
                              label: "Email",
                              controller: emailController,
                              errorText: errorText[1],
                              validate: validate[1]),
                          makeInput(
                              context: context,
                              label: "Numéro de téléphone",
                              controller: phoneController,
                              errorText: errorText[2],
                              validate: validate[2]),
                          makeInput(
                              context: context,
                              label: "Mot de passe",
                              controller: passwordController,
                              obsureText: true,
                              errorText: errorText[3],
                              validate: validate[3]),
                          makeInput(
                              context: context,
                              label: "Confirmer le mot de passe",
                              controller: passwordConfirmController,
                              obsureText: true,
                              errorText: errorText[4],
                              validate: validate[4])
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
                          onPressed: () async {
                            if (customValidator(
                                type: "name", value: nameController.text)) {
                              validate[0] = true;
                            } else {
                              errorText[0] =
                                  "Le pseudo doit faire plus de 6 charactères";
                              validate[0] = false;
                            }
                            if (customValidator(
                                type: "email", value: emailController.text)) {
                              validate[1] = true;
                            } else {
                              errorText[1] = "L'email est inccorect";
                              validate[1] = false;
                            }
                            if (customValidator(
                                type: "phone", value: phoneController.text)) {
                              validate[2] = true;
                            } else {
                              errorText[2] = "Ce numéro n'est pas accepté";
                              validate[2] = false;
                            }
                            if (customValidator(
                                type: "password",
                                value: passwordController.text)) {
                              validate[3] = true;
                            } else {
                              errorText[3] =
                                  "Votre mot de passe doit faire plus de 8 charactères";
                              validate[3] = false;
                            }
                            if (customValidator(
                                type: "confirmPassword",
                                value: passwordConfirmController.text,
                                valueToConfirm: passwordController.text)) {
                              validate[4] = true;
                            } else {
                              errorText[4] =
                                  "Les mots de passe ne sont pas identiques";
                              validate[4] = false;
                            }
                            if (isAllValid(validate)) {
                              user.setName(nameController.text);
                              user.setEmail(emailController.text);
                              user.setPhone(phoneController.text);
                              user.setPassword(passwordController.text);
                              register = await Api.register(context: context);
                              if (register) {
                                Navigator.pushNamed(context, route.loginMail);
                              } else {
                                print(
                                    "\n\n\n" + register.toString() + "\n\n\n");
                                Navigator.pushNamed(context, route.loginMail);
                              }
                            } else {
                              print("\n\npas valid\n\n");
                            }
                          },
                          color: Colors.redAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          child: const Text(
                            "Valider",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
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
                        const Text("Vous avez déjà votre compte ? "),
                        MaterialButton(
                          height: 60,
                          onPressed: () {
                            Navigator.pushNamed(context, route.landingPage);
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          child: const Text(
                            "Connectez vous",
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
        ),
      ),
    );
  }
}

bool customValidator({type, value, valueToConfirm}) {
  switch (type) {
    case "name":
      if (value.length < 6) {
        return false;
      }
      return true;
    case "email":
      return EmailValidator.validate(value);
    case "phone":
      String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
      RegExp regExp = RegExp(pattern);
      if (value.length == 0) {
        return false;
      } else if (!regExp.hasMatch(value)) {
        return false;
      }
      return true;
    case "password":
      if (value.length < 8) {
        return false;
      }
      return true;
    case "confirmPassword":
      if (value != valueToConfirm) {
        return false;
      }
      return true;
    default:
      return true;
  }
}

bool isAllValid(validate) {
  for (var i = 0; i < validate.length; i++) {
    if (validate[i] == false) {
      return false;
    }
  }
  return true;
}

Widget makeInput(
    {context, label, obsureText = false, controller, errorText, validate}) {
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
          errorText: validate ? null : errorText,
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
    ],
  );
}
