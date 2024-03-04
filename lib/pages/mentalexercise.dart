// import 'package:flutter/cupertino.dart';
import 'package:beyondpeace/components/exercisepagecontent.dart';
import 'package:beyondpeace/components/heading.dart';
import 'package:flutter/material.dart';

class Mentalexercise extends StatelessWidget {
  const Mentalexercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color(0xFFdadada),
      child: ListView(
        children: [
          Heading(headtext: "Mental Exercise"),
          Exercisecontent(text: "exercise1"),
          Exercisecontent(text: "exercise2"),
          Exercisecontent(text: "exercise3"),
          Exercisecontent(text: "exercise4"),
          Exercisecontent(text: "exercise5"),
          Exercisecontent(text: "exercise6"),
          Exercisecontent(text: "exercise7"),
          Exercisecontent(text: "exercise8"),
        ],
      ),
    ));
  }
}
