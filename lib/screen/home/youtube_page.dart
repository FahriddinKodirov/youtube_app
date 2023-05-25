import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_api/youtube_api.dart';
import 'package:youtube_uz/screen/home/widget/youtube_video_page.dart';

class YoutubeHome extends StatefulWidget {
  const YoutubeHome({super.key});

  @override
  _YoutubeHomeState createState() => _YoutubeHomeState();
}

class _YoutubeHomeState extends State<YoutubeHome> {
  static String key = "AIzaSyDvtnCFok6wEmFuX4jWqOk4SqUT7-utIdI";

  YoutubeAPI youtube = YoutubeAPI(key);
  List<YouTubeVideo> videoResult = [];

  Future<void> _callAPI() async {
    String query = "Mishary";
    videoResult = await youtube.search(query);
    videoResult = await youtube.nextPage();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _callAPI();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.black,
      body: ListView.builder(
        itemCount: videoResult.length,
        itemBuilder: (context, index) {
          YouTubeVideo video = videoResult[index];
          return YoutubeVideoPage(video: video);
        },
      ),
    );
  }
}
