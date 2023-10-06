import 'package:flutter/material.dart';
import 'package:yep_songer/themes/colors/customcolors.dart';

class CustomCheckBox extends StatefulWidget {
  final bool value;
  final void Function(bool?)? onChanged;

  /// **Does not work yet**
  const CustomCheckBox({Key? key, required this.value, required this.onChanged})
      : super(key: key);

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: widget.value == true
                    ? CustomColors.validation
                    : Colors.transparent)
          ],
          border: Border.all(
              color: const Color.fromRGBO(224, 226, 233, 1), width: 5),
          borderRadius: BorderRadius.circular(18),
          color: Colors.transparent,
        ),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(18)),
          child: InkWell(
            onTap: () {},
            child: FittedBox(
              fit: BoxFit.fill,
              child: Icon(
                Icons.check_rounded,
                color: widget.value == true
                    ? CustomColors.validation
                    : const Color.fromRGBO(224, 226, 233, 1),
              ),
            ),
          ),
        ));
  }
}
