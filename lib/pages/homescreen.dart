import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymast/Planviews/mealPlan.dart';
import 'package:gymast/Planviews/social_interaction.dart';
import 'package:gymast/pages/notifications_page.dart';
import 'package:gymast/Planviews/trainigplanview.dart';
import 'package:gymast/widgets/alpha_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey.shade200,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>  NotificationsPage())),
              child: Icon(
                Icons.notifications,
                size: 30,
                color: Colors.grey.shade400,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Plans",
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
              TrainingTile(
                imageUrl:
                    'https://plus.unsplash.com/premium_photo-1672784163571-38a0f7ebc800?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
                text: 'Training Plan',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PlanViewPage()));
                },
              ),
              TrainingTile(
                imageUrl:
                    'https://plus.unsplash.com/premium_photo-1671485196169-01b6f45bfe46?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
                text: 'Meal Plan',
                onTap: () { Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  MealPlanView()));},
              ),
              TrainingTile(
                imageUrl:
                    'https://images.unsplash.com/photo-1606161290889-77950cfb67d3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
                text: 'Personal Projects Plan',
                onTap: () {},
              ),
              TrainingTile(
                imageUrl:
                    'https://images.unsplash.com/photo-1611162617213-7d7a39e9b1d7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
                text: 'Social Interaction Plan',
                onTap: () {
                   Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>   SocialInteractionPlanView()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
