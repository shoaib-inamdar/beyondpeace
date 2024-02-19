import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Exercisecontent extends StatelessWidget {
  String text;
  Exercisecontent({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text),
      width: double.infinity,
      height: 200,
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.greenAccent,
      ),
    );
  }
}
