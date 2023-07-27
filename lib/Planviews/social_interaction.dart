import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymast/widgets/beta.dart';

class SocialInteractionPlanView extends StatelessWidget {
  SocialInteractionPlanView({super.key});
  final style = GoogleFonts.lato(
      textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.w800));
  final style2 = GoogleFonts.lato(
      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w300));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.grey.shade200,
        centerTitle: true,
        title: Text(
          "Social Interaction Plan ",
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
                'Remember you can set goals that suit you. Here are a few examples',
                style: style2,
              ),
              Text("Goals", style: style),
              
              Text(
                "1.Expand professional network by connecting with at least 5 new industry peers within the next 3 months.",
                style: style2,
              ),
              const SizedBox(height: 10,),
              Text(
                "2.Improve active listening and communication skills during social interactions.",
                style: style2,
              ),
              const SizedBox(height: 10,),
              Text(
                "3.Attend a monthly industry networking event or meetup to meet new professionals and engage in relevant discussions.",
                style: style2,
              ),
              const SizedBox(
                height: 10,
              ),
              const Images(
                  imgUrl:
                      "https://images.unsplash.com/photo-1505373877841-8d25f7d46678?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=812&q=80"),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Social Media",
                style: style,
              ),
              Text(
                "1.Actively participate in industry-related LinkedIn groups and initiate conversations with professionals in the field.",
                style: style2,
              ),
              const SizedBox(height: 10,),
              Text(
                "2.Share relevant articles or insights on Twitter and engage with others' posts to foster online connections.",
                style: style2,
              ),
              const SizedBox(
                height: 10,
              ),
              const Images(
                imgUrl:
                    "https://plus.unsplash.com/premium_photo-1683262038148-2ac280407276?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1032&q=80",
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Evaluation",
                style: style,
              ),
              Text(
                "1.Maintain a journal to reflect on social interactions, noting strengths, areas for improvement, and lessons learned",
                style: style2,
              ),
              const SizedBox(height: 10,),
              Text(
                "2.Request feedback from trusted friends or colleagues after networking events or social gatherings.",
                style: style2,
              ),
              const SizedBox(
                height: 10,
              ),
              const Images(
                  imgUrl:
                      "https://images.unsplash.com/photo-1569412061095-408bacf3756b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1032&q=80")
            ],
          ),
        ),
      ),
    );
  }
}
