import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrainingTile extends StatelessWidget {
  const TrainingTile({super.key, required this.text, required this.imageUrl});
  final String text;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[300]),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(text,
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ))),
        ),
      ),
    );
  }
}
