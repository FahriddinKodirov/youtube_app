import 'package:flutter/material.dart';
import 'package:youtube_api/youtube_api.dart';
import 'package:youtube_uz/screen/home/widget/youtube_player.dart';
import 'package:youtube_uz/utils/my_utils.dart';

class YoutubeVideoPage extends StatelessWidget {
  final YouTubeVideo video;

  const YoutubeVideoPage({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => YoutubePlayerExample(
                      videoId: video.id.toString(),
                    )));
      },
      child: SizedBox(
        height: height(context)*0.44,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            SizedBox(
              child: Image.network(
                video.thumbnail.high.url ?? '',
                fit: BoxFit.fitHeight,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: height(context)*0.014,vertical: height(context)*0.01),
              child: Text(
                 video.title,
                 style: const TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white),
               ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width(context)*0.03),
              child: Row(
                children: [
                  Text(
                    video.channelTitle,
                    softWrap: true,
                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: height(context)*0.016,color: Colors.white),
                  ),
                  SizedBox(width: width(context)*0.01,),
                  Text(
                    video.channelTitle,
                    softWrap: true,
                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: height(context)*0.016,color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
