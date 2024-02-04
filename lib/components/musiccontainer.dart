import 'package:beyondpeace/utils/routes.dart';
import 'package:flutter/material.dart';

class Musiccontainer extends StatelessWidget {
  const Musiccontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 210,
        child: ListView(scrollDirection: Axis.horizontal, children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              width: 180,
              height: 180,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: Colors.red,
              ),
              child: Text(
                "a",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white),
              ),
            ),
          ),
          Container(
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
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white),
            ),
          ),
          InkWell(
            onTap: () =>
                {Navigator.pushNamed(context, Myroutes.mentalmusicroute)},
            child: Container(
              width: 180,
              height: 180,
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
        ]));
  }
}
