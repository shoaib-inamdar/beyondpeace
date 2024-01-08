// import 'dart:ui';

import 'package:beyondpeace/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/images/brain.jpg",
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      children: [
                        const TextField(
                          cursorHeight: 33,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                              prefixIcon:
                                  Icon(CupertinoIcons.person_crop_circle_fill),
                              labelText: "Username",
                              contentPadding: EdgeInsets.all(13),
                              border: OutlineInputBorder()),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const TextField(
                          obscureText: true,
                          cursorHeight: 33,
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.key),
                              labelText: "Password",
                              contentPadding: EdgeInsets.all(13),
                              border: OutlineInputBorder()),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'sign in',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white),
                            onPressed: () {
                              Navigator.pushNamed(context, Myroutes.homeroute);
                            },
                            child: const Text("login")),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: .5,
                                color: Colors.grey,
                              ),
                            ),
                            Text('  or continue with  '),
                            Expanded(
                                child:
                                    Divider(thickness: .5, color: Colors.grey))
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/google.jpg",
                              height: 60,
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Image.asset("assets/images/apple.jpg", height: 60)
                          ],
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    ));
  }
}
