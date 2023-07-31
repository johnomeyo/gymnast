import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymast/pages/auth/sign_up.dart';
import 'package:gymast/widgets/delta.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final emailController = TextEditingController();
final passwordController = TextEditingController();

bool? isChanged = false;

class _LoginPageState extends State<LoginPage> {
  var style = GoogleFonts.lato(
      textStyle: const TextStyle(fontWeight: FontWeight.w900, fontSize: 25));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Welcome back!",
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 40)),
                ),
                Text("Please login to your account",
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20))),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Email",
                  style: style,
                ),
                const SizedBox(
                  height: 10,
                ),
                InputFields(
                    controller: emailController, hintText: "Enter your email"),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Password",
                  style: style,
                ),
                const SizedBox(
                  height: 10,
                ),
                InputFields(
                    controller: passwordController,
                    hintText: "Enter your password"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            value: isChanged,
                            activeColor: Colors.black,
                            onChanged: (value) {
                              setState(() {
                                isChanged = value;
                              });
                            }),
                        const Text(
                          "Remember me",
                          style: TextStyle(fontSize: 17),
                        )
                      ],
                    ),
                    const Text(
                      "Forgot password?",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w800)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      "Dont have an account?",
                      style: TextStyle(fontSize: 17),
                    ),
                    TextButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpPage())),
                        child: const Text(
                          "Sign up",
                          style:
                              TextStyle(color: Colors.deepOrange, fontSize: 17),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
