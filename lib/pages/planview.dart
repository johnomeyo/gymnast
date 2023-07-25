import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymast/widgets/beta.dart';

class PlanViewPage extends StatelessWidget {
  const PlanViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.grey.shade300,
        centerTitle: true,
        title: Text(
          "Training Plan",
          style: GoogleFonts.lato(
              textStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageCarousel(),
              const SizedBox(
                height: 20,
              ),
              const TrainingPlanTiles(
                description:
                    "Incorporate simple exercises that can be done at your desk, such as desk push-ups, seated leg raises, or shoulder rolls. These exercises can help you stay active even during work hours.",
                training: 'Desk Exercises',
                link: 'https://www.youtube.com/watch?v=nFIfv-jIgbI',
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              const TrainingPlanTiles(
                description:
                    "Perform regular stretching and mobility exercises to counteract the effects of sitting for extended periods. Focus on neck, shoulder, wrist, and back stretches to alleviate tension and improve flexibility.",
                training: 'Stretching',
                link: 'https://www.youtube.com/watch?v=nFIfv-jIgbI',
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              const TrainingPlanTiles(
                  training: "Bodyweight Exercises",
                  description:
                      "Bodyweight exercises require no equipment and can be done anywhere. Include exercises like push-ups, squats, lunges, planks, and burpees to improve strength and stamina.",
                  link: "https://www.youtube.com/watch?v=UoC_O3HzsH0")
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ImageCarousel extends StatelessWidget {
  ImageCarousel({super.key});
  List<String> imageUrls = [
    'https://images.unsplash.com/photo-1552196563-55cd4e45efb3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHN0cmV0Y2hpbmd8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1571566882372-1598d88abd90?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8c3RyZXRjaGluZ3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1562771379-eafdca7a02f8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 300,
        autoPlay: false,
        enlargeCenterPage: true,
        // autoPlayInterval: const Duration(seconds: 3),
        // autoPlayAnimationDuration:
        //     const Duration(milliseconds: 800),
      ),
      items: imageUrls.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
              ),
              child: Image.network(
                url,
                fit: BoxFit.cover,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
