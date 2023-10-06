import 'package:flutter/material.dart';

class ReturnButton extends StatelessWidget {
  const ReturnButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.black,
      child: RawMaterialButton(
          elevation: 0,
          onPressed: () => Navigator.pop(context),
          fillColor: Colors.black,
          shape: const CircleBorder(),
          child: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
          )),
    );
  }
}
