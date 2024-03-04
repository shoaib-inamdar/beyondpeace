import 'dart:ui';

import 'package:beyondpeace/components/exercisecontainer.dart';
import 'package:beyondpeace/components/heading.dart';
import 'package:beyondpeace/components/musiccontainer.dart';
import 'package:beyondpeace/utils/routes.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: new DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover),
          color: Color.fromARGB(255, 255, 255, 255),

          // image:
          // DecorationImage(image: AssetImage("assets/images/icon.png"))
        ),
        child: ListView(
          // padding: EdgeInsets.all(30),
          children: [
            Heading(headtext: "BeyondPeace"),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Container(
                width: 100,
                height: 180,
                decoration: BoxDecoration(
                  // color: Colors.indigo,
                  gradient: LinearGradient(colors: [
                    Colors.blue[400]!,
                    Colors.blue[800]!,
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Take Self Assessment',
                  style: TextStyle(
                      fontSize: 31,
                      fontStyle: FontStyle.italic,
                      color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: const Text(
                'Mental Exercise',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
            ),

            //Mental Exercise Design

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Exercisecontainer(image: 'assets/images/brainexercise.jpg'),
                  Exercisecontainer(image: 'assets/images/brainexercise.jpg'),
                  Exercisecontainer(image: 'assets/images/brainexercise.jpg'),
                  InkWell(
                    onTap: () => {
                      Navigator.pushNamed(context, Myroutes.mentalexerciseroute)
                    },
                    child: Container(
                      width: 180,
                      height: 180,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
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
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),
            Container(
              height: 220,
              child: Row(
                // scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        child: InkWell(
                          onTap: () => {
                            Navigator.pushNamed(
                                context, Myroutes.doctorcommunicateroute)
                          },
                          child: Container(
                            width: 183,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: const Color.fromARGB(115, 205, 198, 198),
                            ),
                            child: Text('Communicate With a Doctor',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    color: Colors.black),
                                textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
                    child: Container(
                      width: 183,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.orangeAccent,
                      ),
                      child: Text(
                        'Special Events',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: const Text(
                'MUSIC',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
            ),

            //Menta Exercise Design

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Musiccontainer(image: 'assets/images/brainmusic.jpg'),
                  Musiccontainer(image: 'assets/images/brainmusic.jpg'),
                  Musiccontainer(image: 'assets/images/brainmusic.jpg'),
                  InkWell(
                    onTap: () => {
                      Navigator.pushNamed(context, Myroutes.mentalmusicroute)
                    },
                    child: Container(
                      width: 180,
                      height: 180,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
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
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),
            Container(
              height: 220,
              child: Row(
                // scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, bottom: 8),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          width: 183,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            // color: const Color.fromARGB(255, 169, 150, 150),
                          ),
                          child: Text('Support Group',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Colors.black),
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, left: 8, right: 8, bottom: 8),
                    child: Container(
                      width: 183,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.indigoAccent,
                      ),
                      child: Text(
                        'Record of Medical Reports',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
