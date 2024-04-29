import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube/Screens/nodata.dart';
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
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.landscapeLeft,
    //   DeviceOrientation.landscapeRight,
    // ]);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: true,
        title: Text(
          'Video Player',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        leading: Image.asset(
          'assets/images/logo.png',
          height: 50.v,
          width: 50.h,
          fit: BoxFit.fill,
        ),
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Nodatapage()),
              );
            },
            icon: Icon(Icons.cast),
          ),
          SizedBox(
            width: 10.h,
          ),
          IconButton(
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Nodatapage()),
              );
            },
            icon: Icon(Icons.notifications),
          ),
          SizedBox(
            width: 10.h,
          ),
          IconButton(
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Nodatapage()),
              );
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 330.v,
              width: double.infinity,
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
                icon: IconButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Nodatapage()),
                    );
                  },
                  icon: Icon(Icons.home),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: IconButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Nodatapage()),
                    );
                  },
                  icon: Icon(Icons.theaters),
                ),
                label: 'shorts'),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: IconButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Nodatapage()),
                    );
                  },
                  icon: Icon(Icons.add),
                ),
                label: 'Add'),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: IconButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Nodatapage()),
                    );
                  },
                  icon: Icon(Icons.subscriptions),
                ),
                label: 'subscriptions'),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: IconButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Nodatapage()),
                    );
                  },
                  icon: Icon(Icons.person),
                ),
                label: 'You'),
          ]),
    );
  }
}
