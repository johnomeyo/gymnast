import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputFields extends StatelessWidget {
  const InputFields({super.key, required this.controller, required this.hintText});
  final TextEditingController controller;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10)
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: GoogleFonts.aBeeZee(),
          contentPadding: const EdgeInsets.all(8)
        ),
      ),
    );
  }
}
