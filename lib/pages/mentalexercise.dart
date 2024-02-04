import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mentalexercise extends StatelessWidget {
  const Mentalexercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreenAccent,
          title: Center(
            child: Text(
              "Mental Exercises",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                // fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
        body: Container(
          color: Colors.lightGreenAccent,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 200,
                          height: 200,
                          child: Image.asset('assets/images/yoga.jpg'),
                        ),
                        Positioned(
                            left: 230,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              width: 200,
                              height: 200,
                              child: Text(
                                "Yoga",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 35),
                              ),
                            ))
                      ],
                    ),
                    margin: EdgeInsets.all(5),
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.lightGreenAccent,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Colors.black,
                        ),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 15,
                              color: Colors.grey,
                              spreadRadius: 5),
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 200,
                          height: 200,
                          child: Image.asset('assets/images/meditation.jpg'),
                        ),
                        Positioned(
                            left: 230,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              width: 200,
                              height: 200,
                              child: Text(
                                "Meditation",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
                              ),
                            ))
                      ],
                    ),
                    margin: EdgeInsets.all(5),
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.lightGreenAccent,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Colors.black,
                        ),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 15,
                              color: Colors.grey,
                              spreadRadius: 5),
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 200,
                          height: 200,
                          child: Image.asset('assets/images/breathing.jpg'),
                        ),
                        Positioned(
                            left: 230,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              width: 200,
                              height: 200,
                              child: Text(
                                "Breathing Excercise",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
                              ),
                            ))
                      ],
                    ),
                    margin: EdgeInsets.all(5),
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.lightGreenAccent,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Colors.black,
                        ),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 15,
                              color: Colors.grey,
                              spreadRadius: 5),
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 200,
                          height: 200,
                          child: Image.asset('assets/images/language.jpg'),
                        ),
                        Positioned(
                            left: 230,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              width: 200,
                              height: 200,
                              child: Text(
                                "Learn a new Language",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                            ))
                      ],
                    ),
                    margin: EdgeInsets.all(5),
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.lightGreenAccent,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Colors.black,
                        ),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 15,
                              color: Colors.grey,
                              spreadRadius: 5),
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 200,
                          height: 200,
                          child: Image.asset('assets/images/dance.png'),
                        ),
                        Positioned(
                            left: 230,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              width: 200,
                              height: 200,
                              child: Text(
                                "Learn Dance",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 35),
                              ),
                            ))
                      ],
                    ),
                    margin: EdgeInsets.all(5),
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.lightGreenAccent,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Colors.black,
                        ),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 15,
                              color: Colors.grey,
                              spreadRadius: 5),
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 200,
                          height: 200,
                          child: Image.asset('assets/images/music.jpg'),
                        ),
                        Positioned(
                            left: 230,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              width: 200,
                              height: 200,
                              child: Text(
                                "Listen Music",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 35),
                              ),
                            ))
                      ],
                    ),
                    margin: EdgeInsets.all(5),
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.lightGreenAccent,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Colors.black,
                        ),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 15,
                              color: Colors.grey,
                              spreadRadius: 5),
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 200,
                          height: 200,
                          child: Image.asset('assets/images/articles.jpg'),
                        ),
                        Positioned(
                            left: 230,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              width: 200,
                              height: 200,
                              child: Text(
                                "Read Articles",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 35),
                              ),
                            ))
                      ],
                    ),
                    margin: EdgeInsets.all(5),
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.lightGreenAccent,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Colors.black,
                        ),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 15,
                              color: Colors.grey,
                              spreadRadius: 5),
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 200,
                          height: 200,
                          child: Image.asset('assets/images/journaling.jpg'),
                        ),
                        Positioned(
                            left: 215,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              width: 200,
                              height: 200,
                              child: Text(
                                "Journaling",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 35),
                              ),
                            ))
                      ],
                    ),
                    margin: EdgeInsets.all(5),
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.lightGreenAccent,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Colors.black,
                        ),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 15,
                              color: Colors.grey,
                              spreadRadius: 5),
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
