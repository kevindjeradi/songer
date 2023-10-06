import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

class Genres extends StatefulWidget {
  const Genres({Key? key}) : super(key: key);

  @override
  _GenresState createState() => _GenresState();
}

GlobalKey<ScaffoldState> scaKey = GlobalKey<ScaffoldState>();

class _GenresState extends State<Genres> {
  final genreController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double mWidth = MediaQuery.of(context).size.width;
    double mHeight = MediaQuery.of(context).size.height;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  "Sélectionner les genres influents sur vos recommandations",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            GroupButton(
              buttons: const [
                'Rap',
                'Hip Hop',
                'Jazz',
                'Blues',
                'Electro',
                'Rock',
                'Pop',
                'Soul',
                'Folk',
                'Metal',
                'Classical',
                'R&B',
                'Punk',
                'Country',
                'Raggae',
                'Funk',
              ],
              options: GroupButtonOptions(
                buttonHeight: 40,
                buttonWidth: 70,
                runSpacing: 60,
                spacing: 15,
                borderRadius: BorderRadius.circular(20),
                unselectedBorderColor: Colors.grey[400],
                selectedBorderColor: const Color.fromARGB(255, 220, 20, 60),
                unselectedTextStyle: const TextStyle(
                  color: Colors.grey,
                ),
                selectedColor: const Color.fromARGB(255, 220, 20, 60),
                selectedShadow: [
                  BoxShadow(
                    color:
                        const Color.fromARGB(255, 220, 20, 60).withOpacity(0.2),
                    blurRadius: 20,
                  )
                ],
                unselectedShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    blurRadius: 20,
                  )
                ],
              ),
              isRadio: true,
              controller: GroupButtonController(
                selectedIndexes: const [],
              ),
              onSelected: (val, i, selected) =>
                  print('Button: $val index: $i $selected'),
              // Call /track avec val dans header.
            ),
          ],
        ),
      ),
    );
  }
}
