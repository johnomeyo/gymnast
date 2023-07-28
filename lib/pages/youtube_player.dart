import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVidPage extends StatefulWidget {
  final String videoUrl;

  const YoutubeVidPage({
    super.key,
    required this.videoUrl,
  });

  @override
  State<YoutubeVidPage> createState() => _YoutubeVidPageState();
}

class _YoutubeVidPageState extends State<YoutubeVidPage> {
  late YoutubePlayerController controller;
  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(widget.videoUrl);
    controller = YoutubePlayerController(
        initialVideoId: videoID!,
        flags: const YoutubePlayerFlags(autoPlay: false));
    super.initState();
  }

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
          "Training Guide ",
          style: GoogleFonts.lato(
              textStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: YoutubePlayer(
                controller: controller,
                showVideoProgressIndicator: true,
                onReady: () => debugPrint('ready'),
                bottomActions: [
                  CurrentPosition(),
                  ProgressBar(
                    isExpanded: true,
                    colors: ProgressBarColors(
                      playedColor: Colors.blue.shade900,
                      handleColor: Colors.grey.shade400,
                    ),
                  ),
                  const PlaybackSpeedButton(
                    icon: Icon(Icons.speed),
                  ),
                ],
              ),
            ),
            // Expanded(
            //     child: Lottie.network(
            //         "https://lottie.host/66b6f163-fdda-4061-a129-81ba8a19d242/t7pcJnoM0l.lottie"))
          ],
        ),
      ),
    );
  }
}
