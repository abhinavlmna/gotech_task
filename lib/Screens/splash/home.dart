import 'package:flutter/material.dart';
import 'package:youtube/app/sizeutitls.dart';
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
          height: 50.v,
          width: 50.h,
          fit: BoxFit.fill,
        ),
        actions: [
          Icon(
            Icons.cast,
            color: Colors.white,
          ),
          SizedBox(
            width: 20.h,
          ),
          Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          SizedBox(
            width: 20.h,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            YoutubePlayer(
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
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          // fixedColor: Colors.black,
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.home_filled),
                label: 'Home'),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.theaters),
                label: 'shorts'),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.add),
                label: 'Add'),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.subscriptions),
                label: 'subscriptions'),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.person),
                label: 'You'),
          ]),
    );
  }
}
