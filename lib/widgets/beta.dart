import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrainingPlanTiles extends StatelessWidget {
  const TrainingPlanTiles({super.key, required this.training, required this.description, required this.link});
  final String training;
  final String description;
  final String link;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          training,
          style: GoogleFonts.lato(
              textStyle:
                  const TextStyle(fontWeight: FontWeight.w800, fontSize: 25)),
        ),
        const SizedBox(
          height: 10,
        ),
         Text(
          description,
          style:const TextStyle(fontSize: 17, fontWeight: FontWeight.w200),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Image.asset(
              "assets/youtube.png",
              height: 20,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Check out this video for guidance",
              style: TextStyle(color: Colors.blue),
            )
          ],
        )
      ],
    );
  }
}
