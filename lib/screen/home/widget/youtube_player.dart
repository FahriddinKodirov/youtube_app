import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubePlayerExample extends StatefulWidget {
  final String videoId;

  const YoutubePlayerExample({super.key, required this.videoId});

  @override
  State<YoutubePlayerExample> createState() => _YoutubePlayerExampleState();
}

class _YoutubePlayerExampleState extends State<YoutubePlayerExample> {
  final _ytController = YoutubePlayerController(params: const YoutubePlayerParams(showFullscreenButton: true));


  Future<void> _play() async {
    await _ytController.loadVideoById(videoId: widget.videoId);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Youtube.com'),),
      body: YoutubePlayerScaffold(
        builder: (ctx, player) => SingleChildScrollView(
          child: Column(
            children: [
              const Text('YT player iframe'),
              ElevatedButton(onPressed: _play, child: Text('play')),
              player,
            ],
          ),
        ),
        controller: _ytController,
      ),
    );
  }
}