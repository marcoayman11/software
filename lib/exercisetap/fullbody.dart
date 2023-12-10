import 'package:flutter/material.dart';
import 'package:project_software/Model/modelcard.dart';
import '../screens/card/card.dart';
class Full_Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Card_Exercise(ModelCard( text1: "Arnold Press",
                text2: "Improve shoulder stability.",
                pathimage: "assets/images/arnold.webp")),
            Card_Exercise(ModelCard(
                text1: "Row",
                text2: "Improve back muscles",
                pathimage: "assets/images/row.webp")),
            Card_Exercise(ModelCard(
                text1: "Shoulder Press",
                text2: "Improve bone density.",
                pathimage: "assets/images/shoulderpress.webp")),
            Card_Exercise(ModelCard(
                text1: "Skull Crusher",
                text2: "Improve lockout strength.",
                pathimage: "assets/images/skull.webp")),
            Card_Exercise(ModelCard(
                text1: "Goblet Squat",
                text2: "Improve flexibility in ankles.",
                pathimage: "assets/images/goblet.webp")),
            Card_Exercise(ModelCard(
                text1: "Lunges",
                text2: "Improve balance and stability.",
                pathimage: "assets/images/lunges.webp")),

          ],

        );

      },
      itemCount: 1,
    );
  }
}
