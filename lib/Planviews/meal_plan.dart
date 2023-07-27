import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymast/widgets/beta.dart';

class MealPlanView extends StatelessWidget {
  MealPlanView({super.key});
  final style = GoogleFonts.lato(
      textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.w800));
  final style2 = GoogleFonts.lato(
      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w300));
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
          "Meal Plan",
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
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Breakfast",
                style: style,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "1.Scrambled eggs with spinach and tomatoes",
                style: style2,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "2.Whole-grain toast with avocado slices",
                style: style2,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "3.Fresh fruit salad (e.g., mixed berries, banana, and kiwi)",
                style: style2,
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FoodSamples(
                      img:
                          "https://images.unsplash.com/photo-1484723091739-30a097e8f929?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=449&q=80"),
                  FoodSamples(
                      img:
                          "https://images.unsplash.com/photo-1538220856186-0be0e085984d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=463&q=80"),
                  FoodSamples(
                      img:
                          "https://images.unsplash.com/photo-1581559178851-b99664da71ba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1886&q=80")
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Mid-Morning Snack",
                style: style,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "1.Greek yogurt with honey and a sprinkle of nuts (e.g., almonds or walnuts)",
                style: style2,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "2.An apple or a small bunch of grapes",
                style: style2,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "3.Water or green tea",
                style: style2,
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FoodSamples(
                      img:
                          "https://images.unsplash.com/photo-1472555794301-77353b152fb7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=437&q=80"),
                  FoodSamples(
                      img:
                          "https://images.unsplash.com/photo-1539519532614-723937382b86?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
                  FoodSamples(
                      img:
                          "https://images.unsplash.com/photo-1548839140-29a749e1cf4d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=388&q=80")
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Lunch",
                style: style,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "1.Grilled chicken or tofu (for vegetarians/vegans) with a light lemon-herb marinade)",
                style: style2,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "2.Quinoa or brown rice with mixed vegetables (e.g., bell peppers, broccoli, and carrots)",
                style: style2,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "3. Side salad with leafy greens, cucumber, and vinaigrette dressing",
                style: style2,
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FoodSamples(
                      img:
                          "https://images.unsplash.com/photo-1505576633757-0ac1084af824?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=435&q=80"),
                  FoodSamples(
                      img:
                          "https://plus.unsplash.com/premium_photo-1672242676668-17d9d981e447?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"),
                  FoodSamples(
                      img:
                          "https://images.unsplash.com/photo-1608897013039-887f21d8c804?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=392&q=80")
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Dinner",
                style: style,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "1.Baked salmon with a dill and lemon sauce",
                style: style2,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "2.Roasted sweet potatoes and steamed asparagus",
                style: style2,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "3.Mixed leafy greens salad with cherry tomatoes and balsamic dressing",
                style: style2,
              ),
              Text(
                "4.Water or herbal tea",
                style: style2,
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FoodSamples(
                      img:
                          "https://images.unsplash.com/photo-1603073163308-9654c3fb70b5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=427&q=80"),
                  FoodSamples(
                      img:
                          "https://plus.unsplash.com/premium_photo-1675864532625-60efd11cde54?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=388&q=80"),
                  FoodSamples(
                      img:
                          "https://images.unsplash.com/photo-1515516969-d4008cc6241a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80")
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
