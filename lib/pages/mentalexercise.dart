// import 'package:flutter/cupertino.dart';
// import 'dart:io';

import 'package:beyondpeace/components/divider.dart';
import 'package:beyondpeace/components/exercisepagecontent.dart';
import 'package:beyondpeace/components/heading.dart';
// import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

class Mentalexercise extends StatelessWidget {
  const Mentalexercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      // color: Color(0xFFdadada),
      child: ListView(
        children: [
          Heading(headtext: "Mental Exercise"),
          Exercisetext(
            text: "Exercise 1",
          ),
          Customdivivder(),
          Exercisecontent(urltext: 'assets/videos/check-it-out.mp4'),
          // Exercisetext(text: "exercise 2"),
          Exercisetext(text: "Exercise 2"),
          Customdivivder(),
          Exercisecontent(urltext: 'assets/videos/car.mp4'),
          Exercisetext(text: "Exercise 3"),
          // Exercisetext(text: "hello"),
          Customdivivder(),
          Exercisecontent(urltext: 'assets/videos/car.mp4'),
        ],
      ),
    ));
  }
}

// ignore: must_be_immutable
class Exercisetext extends StatelessWidget {
  Exercisetext({required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Text(
        text,
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
      ),
    );
  }
}
