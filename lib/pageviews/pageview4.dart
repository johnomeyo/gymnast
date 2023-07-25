import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymast/widgets/alpha_widgets.dart';

class PageView4 extends StatelessWidget {
  const PageView4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1554177255-61502b352de3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const SizedBox(
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Social",
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            fontSize: 45,
                            color: Colors.white,
                            letterSpacing: 2)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Schedule time for social interactions with friends, family, or colleagues. Human connections can provide mental support and foster creativity.",
                    style: GoogleFonts.lato(
                        textStyle:
                            const TextStyle(fontSize: 15, color: Colors.white)),
                  )
                ],
              ),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [LoginButton(), SignUpButton()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
