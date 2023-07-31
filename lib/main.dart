import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymast/pages/homescreen.dart';
import 'package:gymast/pageviews/pageview1.dart';
import 'package:gymast/pageviews/pageview2.dart';
import 'package:gymast/pageviews/pageview3.dart';
import 'package:gymast/pageviews/pageview4.dart';
import 'package:gymast/provider/fav_provider.dart';
import 'package:provider/provider.dart';
// import 'package:gymast/pages/homescreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => FavoriteProvider()),
          ],
          //
          child: const Home()),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _controller = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: _controller,
          onPageChanged: (value) {
            setState(() {
              isLastPage = (value == 3);
            });
          },
          children: const [
            PageView1(),
            PageView2(),
            PageView3(),
            PageView4(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              isLastPage
                  ? TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      },
                      child: Text(
                        "Done",
                        style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                fontSize: 15, color: Colors.white)),
                      ))
                  : TextButton(
                      onPressed: () {
                        _controller.jumpToPage(3);
                      },
                      child: Text(
                        "Skip",
                        style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                fontSize: 15, color: Colors.white)),
                      )),
            ],
          ),
        ),
        Container(
            alignment: const Alignment(0, 0.75),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: ExpandingDotsEffect(
                  activeDotColor: Colors.deepOrange,
                  dotColor: Colors.grey.shade300,
                  dotHeight: 10,
                  dotWidth: 10),
            ))
      ]),
    );
  }
}
