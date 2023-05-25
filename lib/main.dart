import 'package:flutter/material.dart';
import 'package:youtube_uz/screen/home/widget/youtube_player.dart';
import 'package:youtube_uz/screen/tab_box/tab_box_page.dart';
import 'package:youtube_uz/screen/home/youtube_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  TabBoxPage(),
    );
  }
}

