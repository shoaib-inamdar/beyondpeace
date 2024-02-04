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
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 13, horizontal: 20),
          child: Column(
            children: [
              TextField(
                cursorHeight: 33,
                style: TextStyle(
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                    prefixIcon: Icon(CupertinoIcons.person_crop_rectangle),
                    labelText: "First name",
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
                    prefixIcon: Icon(CupertinoIcons.person_crop_rectangle),
                    labelText: "Last name",
                    contentPadding: EdgeInsets.all(13),
                    border: OutlineInputBorder()),
              ),
            ],
          ),
        ),
      )),
    ));
  }
}
