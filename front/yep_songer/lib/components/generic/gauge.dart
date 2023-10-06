import 'package:flutter/material.dart';
import 'package:yep_songer/themes/colors/customcolors.dart';

class Gauge extends StatefulWidget {
  final double value;
  const Gauge({Key? key, required this.value}) : super(key: key);

  @override
  _GaugeState createState() => _GaugeState();
}

class _GaugeState extends State<Gauge> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color.fromRGBO(245, 245, 249, 1)),
        child: Padding(
            padding: const EdgeInsets.all(5.2),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromRGBO(227, 230, 236, 1)),
                child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Container(
                        decoration: BoxDecoration(
                            color: CustomColors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                            padding: const EdgeInsets.all(6),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: LinearProgressIndicator(
                                  value: widget.value,
                                  backgroundColor:
                                      const Color.fromRGBO(246, 247, 249, 1),
                                  color: CustomColors.blue,
                                ))))))));
  }
}
