import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/beta.dart';

class PersonalProjects extends StatelessWidget {
  PersonalProjects({super.key});
  final style = GoogleFonts.lato(
      textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.w800));
  final style2 = GoogleFonts.aBeeZee(
      textStyle: const TextStyle(fontWeight: FontWeight.w100));
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
          "Personal Projects Plan",
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
                "Brainstorm Project Ideas",
                style: style,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "List down project ideas that align with your interests and goals. Make sure the projects are realistic and feasible within your current skill level and time constraints. Choose something that excites you and motivates you to work on it.",
                style: style2,
              ),
              const SizedBox(
                height: 10,
              ),
              const Images(
                imgUrl:
                    'https://images.unsplash.com/photo-1588856122867-363b0aa7f598?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=773&q=80',
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Define project features",
                style: style,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Once you have a project idea, define the scope and the core features it should include. Breaking down the project into smaller tasks will make it more manageable and help you stay focused.",
                style: style2,
              ),
              const SizedBox(
                height: 10,
              ),
              const Images(
                  imgUrl:
                      "https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"),
              Text(
                "Choose Relevant Technologies",
                style: style,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Select the technologies and programming languages that best suit your project requirements. While it's essential to challenge yourself and learn new things, also ensure that you have a basic understanding of the chosen technologies.",
                style: style2,
              ),
              const SizedBox(
                height: 10,
              ),
              const Images(
                  imgUrl:
                      "https://images.unsplash.com/photo-1515879218367-8466d910aaa4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=869&q=80"),
                      const SizedBox(height: 10,),
                      Text("Set Up Version Control",style: style,),
                      const SizedBox(height: 10,),
                      Text("Create a Git repository for your project and use version control to track changes. This will allow you to collaborate with others, revert changes if needed, and showcase your coding progress.",style: style2,),
                      const SizedBox(height: 10,),
                      const Images(imgUrl: "https://images.unsplash.com/photo-1618401471353-b98afee0b2eb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=888&q=80"),
                      const SizedBox(height: 10,),
                      Text("Regularly Update and Document Your Progress",style: style,),
                      const SizedBox(height: 10,),
                      Text("Keep your project updated regularly, even if it's a small improvement. Document your progress, challenges faced, and solutions found. This documentation will be valuable for your future reference and to showcase your thought process.",style: style2,),
                      const SizedBox(height: 10,),
                      const Images(imgUrl: "https://images.unsplash.com/photo-1595675024853-0f3ec9098ac7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
                      Text("Implement testing",style: style,),
                      Text("Integrate testing into your project to ensure that it works as intended and to catch and fix bugs early in the development process.",style: style2,),
                      const SizedBox(height: 10,),
                      const Images(imgUrl: "https://images.unsplash.com/photo-1611175694989-4870fafa4494?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=374&q=80"),
                      const SizedBox(height: 10,),
                      Text("Polish and Refine",style: style,),
                      const SizedBox(height: 10,),
                      Text("Once you have completed the core functionality, focus on polishing the user experience, UI/UX design, and optimizing the code for performance.",style: style2,),
                      const SizedBox(height: 10,),
                      const Images(imgUrl: "https://images.unsplash.com/photo-1535223289827-42f1e9919769?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
                      const SizedBox(height: 10,),
                      const SizedBox(height: 10,),
                      Text("Deploy and Host",style: style,),
                      const SizedBox(height: 10,),
                      Text("If applicable, deploy your project to a live environment. Hosting it on platforms like GitHub Pages, Heroku, or AWS can make it easily accessible to others.",style: style2,),
                      const SizedBox(height: 10,),
                      const Images(imgUrl: "https://images.unsplash.com/photo-1607799632518-da91dd151b38?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
                       Text("Update Your Portfolio",style: style2,),
                       const SizedBox(height: 10,),
                       Text("Add your completed project to your portfolio, along with a brief description and the technologies used. Having a well-organized portfolio will help you showcase your skills to potential employers or clients.",style: style2,),
                       const SizedBox(height: 10,),
                       const Images(imgUrl: "https://images.unsplash.com/photo-1507238691740-187a5b1d37b8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=455&q=80"),
                       const SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
