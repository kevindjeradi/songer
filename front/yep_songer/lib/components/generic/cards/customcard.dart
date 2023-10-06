import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatefulWidget {
  final Color? backgroundColor;
  final Widget child;
  final bool shadow;

  /// # A customizable card
  ///
  /// ## Parameters:
  ///
  /// **child :** [Widget]. The child of the container. **Is required.**
  ///
  /// **backgroundColor :** [Color?]. Sets the background color of the card.
  ///
  /// Example:
  /// ```dart
  /// CustomCard(
  /// backgroundColor: CustomColors.blue,
  /// child: Column(children: [Text("Hello"), const Icon(Icons.ac_unit)])
  /// )
  /// ```
  const CustomCard(
      {Key? key,
      this.backgroundColor,
      required this.child,
      this.shadow = false})
      : super(key: key);

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(0, 4, 0, 15),
        decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(18),
            boxShadow: widget.shadow
                ? [
                    const BoxShadow(
                        color: Color.fromRGBO(255, 255, 255, 0.5),
                        offset: Offset(0, 7),
                        spreadRadius: 0)
                  ]
                : [const BoxShadow(offset: Offset(0, 0))]),
        child: widget.child);
  }
}

class CustomCardTemplates {
  static CustomCard trouverLaDSI(
      {required BuildContext context,
      required String title,
      required String svgPath,
      required String place}) {
    return CustomCard(
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(children: [
            Flexible(flex: 1, child: SvgPicture.asset(svgPath)),
            Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: Theme.of(context).textTheme.headline4),
                      Row(
                        children: [
                          Icon(
                            Icons.place,
                            color: Colors.black.withOpacity(0.5),
                            size: 18,
                          ),
                          Text(place,
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.3)))
                        ],
                      )
                    ],
                  ),
                ))
          ]),
        ));
  }
}
