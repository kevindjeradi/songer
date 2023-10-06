import 'package:flutter/material.dart';

mixin CustomLoader<T extends Widget> {
  Color baseColor = Colors.grey[300]!;
  Color hightLightColor = Colors.grey[100]!;
  void animate();
}
