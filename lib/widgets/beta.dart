import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class TrainingPlanTiles extends StatelessWidget {
  const TrainingPlanTiles(
      {super.key,
      required this.training,
      required this.description,
      required this.link});
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
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w200),
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
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Check out this video for guidance",
                  style: TextStyle(color: Colors.blue),
                ))
          ],
        )
      ],
    );
  }
}

class FoodSamples extends StatelessWidget {
  const FoodSamples({super.key, required this.img, });
  final String img;
 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(image: NetworkImage(img),fit: BoxFit.cover)),
    );
  }
}
