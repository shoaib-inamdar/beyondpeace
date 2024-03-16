import 'dart:ui';

import 'package:beyondpeace/components/exercisecontainer.dart';
// import 'package:beyondpeace/components/heading.dart';
import 'package:beyondpeace/components/musiccontainer.dart';
import 'package:beyondpeace/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int activeIndex = 0;
  final widgets = [
    Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white), color: Color(0xffdadada)),
    ),
    Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white), color: Color(0xff000000)),
    ),
    Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white), color: Color(0xffdadada)),
    ),
    Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white), color: Color(0xff000000)),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            // color: Color(0xff000000),

            // image:
            // DecorationImage(image: AssetImage("assets/images/icon.png"))
            ),
        child: ListView(
          // padding: EdgeInsets.all(30),
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(),
                  child: Icon(Icons.menu),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("welcome"),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      image: new DecorationImage(
                          image: AssetImage("assets/images/ultragoku.jpg"),
                          fit: BoxFit.cover)),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "DASHBOARD",
                style: TextStyle(
                    // color: Colors.white,
                    // decoration: TextDecoration.underline,
                    fontSize: 50,
                    fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CarouselSlider.builder(
                    itemCount: widgets.length,
                    itemBuilder: (context, index, realIndex) {
                      var assetImage = widgets[index];
                      return buildImage(assetImage, index);
                    },
                    options: CarouselOptions(
                        onPageChanged: (index, reason) =>
                            setState(() => activeIndex = index),
                        enlargeStrategy: CenterPageEnlargeStrategy.scale,
                        enlargeCenterPage: true,
                        height: 200,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 2))),
                const SizedBox(
                  height: 32,
                ),
                buildIndicator()
              ],
            ),
            // Heading(headtext: "BeyondPeace"),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Container(
                width: 100,
                height: 180,
                decoration: BoxDecoration(
                  color: Color(0xff000000),
                  // color: Colors.indigo,
                  // gradient: LinearGradient(colors: [
                  //   Colors.black12,
                  //   Colors.black,
                  // ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
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
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: const Text(
                'Mental Exercise',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                height: 5,
                thickness: 3,
                color: Colors.black,
              ),
            ),
            //Mental Exercise Design
            SizedBox(
              height: 20,
            ),
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
                        border: Border.all(color: Colors.white),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: Color(0xff000000),
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
                              border: Border.all(
                                  color: Color(0xffffffff), width: 3),
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
                        color: Color(0xff000000),
                      ),
                      child: Text(
                        'Special  Events',
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
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                height: 5,
                thickness: 3,
                color: Colors.black,
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
                        border: Border.all(color: Colors.black),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: Color(0xff000000),
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
                            color: Color(0xff000000),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            // color: const Color.fromARGB(255, 169, 150, 150),
                          ),
                          child: Text('Support  Group',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Colors.white),
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
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xffdadada),
                      ),
                      child: Text(
                        'Record of Medical Reports',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.black),
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

  Widget buildImage(assetImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        // width: 300,
        // color: Colors.grey,
        child: InkWell(
          onTap: () {
            if (index == 0) {
              Navigator.pushNamed(context, Myroutes.mentalmusicroute);
            } else if (index == 1) {
              Navigator.pushNamed(context, Myroutes.mentalexerciseroute);
            } else if (index == 2) {
              Navigator.pushNamed(context, Myroutes.doctorcommunicateroute);
            } else if (index == 3) {
              Navigator.pushNamed(context, Myroutes.musicroute);
            }
          },
          child: Container(
            child: assetImage,
            decoration: BoxDecoration(border: Border.all(color: Colors.white)),

            // width: 500,

            // child: Image.asset(
            //   assetImage,
            //   fit: BoxFit.cover,
            // ),
          ),
        ),
      );

  buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: widgets.length,
        effect: JumpingDotEffect(
            // paintStyle: PaintingStyle.fill,
            // strokeWidth: 1,
            spacing: 20,
            // offset: 22,r
            verticalOffset: 14.0,
            activeDotColor: Colors.black,
            dotColor: Color(0xffdadada)),
      );
}
