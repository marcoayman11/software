import 'package:flutter/material.dart';
import 'package:project_software/Model/modelcard.dart';
import '../screens/card/card.dart';
class Lower extends StatelessWidget {
  const Lower({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Card_Exercise(ModelCard(
                text1: "Hamstring Curl",
                text2: "Improve Hamstring muscle",
                pathimage: "assets/images/hamstring.webp")),
            Card_Exercise(ModelCard(
                text1: "Goblet Squat",
                text2: "Improve thigh muscle.",
                pathimage: "assets/images/goblet.webp")),
            Card_Exercise(ModelCard(
                text1: "Romanian Deadlifts",
                text2: "Improve Back and hip muscles.",
                pathimage: "assets/images/romin.webp")),
            Card_Exercise(ModelCard(
                text1: "Split Squats",
                text2: "Abdominal and thigh muscles.",
                pathimage: "assets/images/split.webp")),
            Card_Exercise(ModelCard(
                text1: "Calf Raises",
                text2: "Improve calf muscles.",
                pathimage: "assets/images/calf.webp")),
            Card_Exercise(ModelCard(
                text1: "Steps Ups",
                text2: "Improve quadriceps muscles.",
                pathimage: "assets/images/stepups.webp")),
          ],
        );

      },
      itemCount: 1,
    );
  }
}
