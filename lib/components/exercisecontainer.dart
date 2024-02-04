import 'package:beyondpeace/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exercisecontainer extends StatelessWidget {
  const Exercisecontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 210,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        Container(
          width: 180,
          margin: EdgeInsets.all(3),
          height: 180,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: Colors.red,
          ),
          child: Text(
            "a",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
          ),
        ),
        Container(
          padding: EdgeInsets.all(3),
          margin: EdgeInsets.all(3),
          width: 180,
          height: 180,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: Colors.red,
          ),
          child: Text(
            "b",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
          ),
        ),
        InkWell(
          onTap: () =>
              {Navigator.pushNamed(context, Myroutes.mentalexerciseroute)},
          child: Container(
            width: 180,
            height: 180,
            margin: EdgeInsets.all(3),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              color: Colors.red,
            ),
            child: Text(
              "see more",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white),
            ),
          ),
        )
      ]),
    );
  }
}
