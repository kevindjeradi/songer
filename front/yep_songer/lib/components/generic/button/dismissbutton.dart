import 'package:flutter/material.dart';
import 'package:yep_songer/themes/colors/customcolors.dart';

class DismissButton extends StatefulWidget {
  final VoidCallback function;
  final double size;

  /// ## Creates a dismiss button
  ///
  /// ### **Parameters :**
  ///
  /// **function :** [VoidCallBack] (void Function()). Is executed when the button is pressed. **Is required.**
  ///
  /// **size :** [double]. Defines the size of the button. **Is required.**
  const DismissButton({Key? key, required this.function, required this.size})
      : super(key: key);

  @override
  _DismissButtonState createState() => _DismissButtonState();
}

class _DismissButtonState extends State<DismissButton> {
  double iconSize() {
    return widget.size;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.size * 2,
        width: widget.size * 2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: CustomColors.black),
        child: IconButton(
          icon: Icon(
            Icons.close_rounded,
            size: widget.size * 1.25,
          ),
          onPressed: widget.function,
          color: CustomColors.white,
        ));
  }
}
