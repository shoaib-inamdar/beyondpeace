import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
          child: Center(
        child: Column(
          children: [
            TextField(
              cursorHeight: 33,
              style: TextStyle(
                fontSize: 20,
              ),
              decoration: InputDecoration(
                  prefixIcon: Icon(CupertinoIcons.person_crop_circle_fill),
                  labelText: "Username",
                  contentPadding: EdgeInsets.all(13),
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              cursorHeight: 33,
              style: TextStyle(
                fontSize: 20,
              ),
              decoration: InputDecoration(
                  prefixIcon: Icon(CupertinoIcons.person_crop_circle_fill),
                  labelText: "Username",
                  contentPadding: EdgeInsets.all(13),
                  border: OutlineInputBorder()),
            ),
          ],
        ),
      )),
    ));
  }
}
