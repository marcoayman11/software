
import 'package:flutter/material.dart';
import 'package:project_software/Model/modelcard.dart';
import 'package:project_software/screens/card/card.dart';

class All_Type extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Card_Exercise(ModelCard( text1: "Calf Raises",
                text2: "Improve calf muscles.",
                pathimage: "assets/images/calf.webp")),
            Card_Exercise(ModelCard(
                text1: "Goblet Squat",
                text2: "Improve flexibility in ankles.",
                pathimage: "assets/images/goblet.webp")),
            Card_Exercise(ModelCard(
                text1: "Dumbbell Pullover",
                text2: "Improve chest and back strength",
                pathimage: "assets/images/pullover.webp")),
            Card_Exercise(ModelCard(
                text1: "Hamstring Curl",
                text2: "Improve Hamstring muscle",
                pathimage: "assets/images/hamstring.webp")),
            Card_Exercise(ModelCard(
                text1: "Lateral Raises",
                text2: "Improve shoulder strength",
                pathimage: "assets/images/lateral.webp")),
            Card_Exercise(ModelCard(
                text1: "Arnold Press",
                text2: "Improve shoulder stability.",
                pathimage: "assets/images/arnold.webp")),
          ],
        );

      },
      itemCount: 1,
    );
  }
}

