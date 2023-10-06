import 'package:flutter/material.dart';
import 'package:yep_songer/components/generic/button/custombutton.dart';
import 'package:yep_songer/components/generic/form/custom_text_field.dart';
import 'package:yep_songer/themes/colors/customcolors.dart';

class HelpScreen extends StatefulWidget {
  String title;
  HelpScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.greyDarken3,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomTextField(hintText: "Email", controller: emailController),
            const SizedBox(height: 10),
            CustomTextField(hintText: "Message", controller: messageController),
            const SizedBox(height: 10),
            CustomButton(
                text: "Envoyer",
                function: () {
                  setState(() {});
                },
                color: ButtonColor.black)
          ],
        ),
      ),
    );
  }
}
