import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  Heading({required this.headtext});
  var headtext;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 170,
      child: Text(headtext,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700)),
      decoration: BoxDecoration(
          color: Color(0xFFC5C6CB),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100))),
    );
  }
}
