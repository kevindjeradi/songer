import 'package:flutter/material.dart';
import 'package:yep_songer/themes/colors/customcolors.dart';

class AnchorButton extends StatefulWidget {
  final VoidCallback function;
  final double size;

  /// ## Creates an anchor button
  ///
  /// ### **Parameters :**
  ///
  /// **function :** [VoidCallBack] (void Function()). Is executed when the button is pressed. **Is required.**
  ///
  /// **size :** [double]. Defines the size of the button. **Is required.**
  const AnchorButton({Key? key, required this.function, required this.size})
      : super(key: key);

  @override
  _AnchorButtonState createState() => _AnchorButtonState();
}

class _AnchorButtonState extends State<AnchorButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size * 2,
      width: widget.size * 2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: CustomColors.blue,
          boxShadow: const [
            BoxShadow(
                color: CustomColors.blue,
                blurRadius: 15,
                offset: Offset(0, 12),
                spreadRadius: -6)
          ]),
      child: IconButton(
        icon: Icon(Icons.arrow_downward_rounded, size: widget.size * 1.5),
        onPressed: widget.function,
        color: CustomColors.white,
      ),
    );
  }
}
