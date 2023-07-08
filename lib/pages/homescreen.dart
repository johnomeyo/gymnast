import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymast/pages/favorite_page.dart';
import 'package:gymast/pages/sample_items.dart';
import 'package:gymast/widgets/alpha_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar:
          AppBar(elevation: 0, backgroundColor: Colors.grey.shade200, actions: [
        GestureDetector(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const FavoritesPage() )),
          child: Icon(
            Icons.favorite,
            size: 30,
            color: Colors.grey.shade400,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child:   GestureDetector(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SampleLikeItems() )),
          child: Icon(
            Icons.person,
            size: 30,
            color: Colors.grey.shade400,
          ),
        ),
        ),
      ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Store",
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        letterSpacing: 1,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                height: 20,
              ),
              const TrainingTile(
                imageUrl:
                    'https://plus.unsplash.com/premium_photo-1672784163571-38a0f7ebc800?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
                text: 'Training Plan',
              ),
              const TrainingTile(
                imageUrl:
                    'https://images.unsplash.com/photo-1624513764370-f29d72dc4e19?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=442&q=80',
                text: 'Meal Plan',
              ),
              const TrainingTile(
                imageUrl:
                    'https://images.unsplash.com/photo-1606902965551-dce093cda6e7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
                text: 'Supplement Plan',
              ),
              const TrainingTile(
                imageUrl:
                    'https://images.unsplash.com/photo-1659090588548-a9066821d87e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
                text: 'Supplement Plan',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
