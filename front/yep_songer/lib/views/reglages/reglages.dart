import 'package:flutter/material.dart';

List<dynamic> currentTickets = [];
List<dynamic> closedTickets = [];

class Reglages extends StatefulWidget {
  const Reglages({Key? key}) : super(key: key);

  @override
  State<Reglages> createState() => _ReglagesState();
}

class _ReglagesState extends State<Reglages> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(child: Text("Historique")),
      ),
    );
  }
}
