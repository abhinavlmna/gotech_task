import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final videoUrl = 'https://www.youtube.com/watch?v=90OC4TQ7uHc';
  late YoutubePlayerController _controller;
  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoUrl);
    _controller = YoutubePlayerController(
        initialVideoId: videoID!, flags: YoutubePlayerFlags(autoPlay: false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'YouTube',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        leading: Image.asset(
          'assets/images/utube.jpg',
          height: 50,
          width: 50,
          fit: BoxFit.fill,
        ),
        actions: [
          Icon(
            Icons.cast,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                width: 390,
                child: YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                  bottomActions: [
                    CurrentPosition(),
                    ProgressBar(
                      isExpanded: true,
                      colors: ProgressBarColors(
                          playedColor: Colors.red, handleColor: Colors.red),
                    ),
                    RemainingDuration(),
                    PlaybackSpeedButton(),
                    FullScreenButton(),

                    // CurrentPosition(),
                    // PlayPauseButton(),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
