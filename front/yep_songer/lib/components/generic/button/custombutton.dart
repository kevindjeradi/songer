import 'package:flutter/material.dart';
import 'package:yep_songer/themes/colors/customcolors.dart';

enum ButtonColor { blue, black, white }

class CustomButton extends StatefulWidget {
  final String text;
  final void Function()? function;
  final ButtonColor color;
  final bool? outlined;
  final IconData? icon;
  final bool? isIconToTheRight;
  final bool? isDisabled;
  final bool isRounded;
  final double? iconSize;

  /// ## Creates a customizable button
  ///
  /// ### **Parameters :**
  ///
  /// **text :** [String]. It is displayed in the button. **Is required.**
  ///
  /// **function :** [VoidCallBack] (void Function()). Is executed when the button is pressed. **Is required.**
  ///
  /// **color :** [ButtonColor] (enum). Choose between the three given colors by the design team :
  ///
  /// ButtonColor.blue,
  ///
  /// ButtonColor.black and
  ///
  /// ButtonColor.white.
  ///
  /// **Is required.**
  ///
  /// **outlined :** [bool]. If true, the button will have a transparent background. **False by default.**
  ///
  /// **icon :** [IconData]. Accepts both Material icons and FontAwesome icons.
  ///
  /// **isIconToTheRight :** [bool]. If true, the icon will be placed at the right of the text. **False by default.**
  ///
  /// Example :
  /// ```dart
  /// CustomButton(
  ///     text: "Bouton",
  ///     function: () {print("Hello World!")},
  ///     color: ButtonColor.blue,
  ///     outlined: true,
  ///     icon: Icons.window,
  ///     isIconToTheRight: true)
  /// ```
  const CustomButton({
    Key? key,
    required this.text,
    required this.function,
    required this.color,
    this.iconSize = 24,
    this.outlined = false,
    this.icon,
    this.isIconToTheRight = false,
    this.isDisabled = false,
    this.isRounded = false,
  }) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  late double rounded;

  ButtonStyle customButtonStyle() {
    if (widget.isRounded) {
      rounded = 50;
    } else {
      rounded = 12;
    }
    return ButtonStyle(
        splashFactory: NoSplash.splashFactory,
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.resolveWith<RoundedRectangleBorder>(
            (Set<MaterialState> states) {
          if (widget.isDisabled!) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(rounded));
          } else if (widget.outlined == false) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(rounded));
          } else {
            if (widget.color == ButtonColor.blue) {
              if (states.contains(MaterialState.pressed)) {
                return RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(rounded),
                    side: const BorderSide(
                        color: CustomColors.pressedBlue,
                        style: BorderStyle.solid));
              }
              return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(rounded),
                  side: const BorderSide(
                      color: CustomColors.blue, style: BorderStyle.solid));
            } else if (widget.color == ButtonColor.black) {
              if (states.contains(MaterialState.pressed)) {
                return RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(rounded),
                    side: const BorderSide(
                        color: CustomColors.pressedBlack,
                        style: BorderStyle.solid));
              }
              return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(rounded),
                  side: const BorderSide(
                      color: CustomColors.black, style: BorderStyle.solid));
            } else {
              if (states.contains(MaterialState.pressed)) {
                return RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(rounded),
                    side: const BorderSide(
                        color: CustomColors.pressedWhite,
                        style: BorderStyle.solid));
              }
              return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(rounded),
                  side: const BorderSide(
                      color: CustomColors.white, style: BorderStyle.solid));
            }
          }
        }),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (widget.isDisabled!) {
            return CustomColors.grey;
          } else if (widget.outlined == true) {
            return const Color.fromRGBO(0, 0, 0, 0);
          } else {
            if (states.contains(MaterialState.pressed)) {
              if (widget.color == ButtonColor.blue) {
                return CustomColors.pressedBlue;
              } else if (widget.color == ButtonColor.black) {
                return CustomColors.pressedBlack;
              } else {
                return CustomColors.pressedWhite;
              }
            } else {
              if (widget.color == ButtonColor.blue) {
                return CustomColors.blue;
              } else if (widget.color == ButtonColor.black) {
                return CustomColors.black;
              } else {
                return CustomColors.white;
              }
            }
          }
        }),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (widget.isDisabled!) {
            return Colors.white;
          } else if (widget.outlined == false) {
            if (widget.color == ButtonColor.white) {
              return Colors.black;
            } else {
              return Colors.white;
            }
          } else {
            if (states.contains(MaterialState.pressed)) {
              if (widget.color == ButtonColor.blue) {
                return CustomColors.pressedBlue;
              } else if (widget.color == ButtonColor.black) {
                return CustomColors.pressedBlack;
              } else {
                return CustomColors.pressedWhite;
              }
            } else {
              if (widget.color == ButtonColor.blue) {
                return CustomColors.blue;
              } else if (widget.color == ButtonColor.black) {
                return CustomColors.black;
              } else {
                return CustomColors.white;
              }
            }
          }
        }));
  }

  void Function()? disableCheck() {
    if (widget.isDisabled!) {
      return null;
    } else {
      return widget.function;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.icon == null) {
      return ElevatedButton(
          child: Text(widget.text),
          onPressed: disableCheck(),
          style: customButtonStyle());
    } else if (widget.isIconToTheRight == false) {
      return ElevatedButton.icon(
          onPressed: disableCheck(),
          icon: Icon(widget.icon, size: widget.iconSize),
          label: Text(widget.text),
          style: customButtonStyle());
    } else {
      return Directionality(
          textDirection: TextDirection.rtl,
          child: ElevatedButton.icon(
              onPressed: disableCheck(),
              icon: Icon(widget.icon, size: widget.iconSize),
              label: Text(widget.text),
              style: customButtonStyle()));
    }
  }
}
