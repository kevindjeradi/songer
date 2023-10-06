import 'package:flutter/cupertino.dart';

enum SwitchColor { green, black }

class CustomSwitch extends StatefulWidget {
  final void Function(bool) onChanged;
  final bool value;
  // final SwitchColor color;

  /// **Does not work yet**
  const CustomSwitch({
    Key? key,
    required this.onChanged,
    required this.value,
  }) : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      onChanged: widget.onChanged,
      value: widget.value,
    );
  }
}
