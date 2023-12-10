
import 'package:flutter/material.dart';

import '../Model/modelcard.dart';
import '../screens/card/card.dart';

class Upper extends StatelessWidget {
  const Upper({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Card_Exercise(ModelCard(
                text1: "Floor Press",
                text2: "Improve upper body strength",
                pathimage: "assets/images/floorpress.webp")),
            Card_Exercise(ModelCard(
                text1: "Floor Flyes",
                text2: "Improve chest targeting",
                pathimage: "assets/images/floorflyes.webp")),
            Card_Exercise(ModelCard(
                text1: "Press Ups",
                text2: "Improve mobility",
                pathimage: "assets/images/pressups.webp")),
            Card_Exercise(ModelCard(
                text1: "Dumbbell Pullover",
                text2: "Improve chest and back strength",
                pathimage: "assets/images/pullover.webp")),
            Card_Exercise(ModelCard(
                text1: "Tricep Extns",
                text2: "Improve lockout strength",
                pathimage: "assets/images/tricep.webp")),
            Card_Exercise(ModelCard(
                text1: "Lateral Raises",
                text2: "Improve shoulder strength",
                pathimage: "assets/images/lateral.webp")),
          ],
        );

      },
      itemCount: 1,
    );
  }
}