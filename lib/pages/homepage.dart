// import 'package:beyondpeace/components/bottomNavBar.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:beyondpeace/components/exercisecontainer.dart';
import 'package:beyondpeace/components/musiccontainer.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Homepage extends StatelessWidget {
  Homepage({super.key});
  var arrContents = ['abc', 'xyz', 'pqr', 'mnk', 'stv'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Mental Health Wellness '),
        ),
        body: Container(
          decoration: BoxDecoration(),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 100,
                  height: 180,
                  decoration: const BoxDecoration(
                    color: Colors.indigo,
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
                padding: const EdgeInsets.all(12.0),
                child: const Text(
                  'Mental Exercise',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
              ),

              //Menta Exercise Design

              Exercisecontainer(),
              Container(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 8),
                      child: Container(
                        width: 195,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.orangeAccent,
                        ),
                        child: Text('Communication  With Doctor',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.white),
                            textAlign: TextAlign.center),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 8, right: 8),
                      child: Container(
                        width: 195,
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
                padding: const EdgeInsets.all(12.0),
                child: const Text(
                  'MUSIC',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
              ),

              //Menta Exercise Design
              Musiccontainer(),
              Container(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 8, bottom: 8),
                      child: Container(
                        width: 195,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.indigoAccent,
                        ),
                        child: Text('Support Group',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.white),
                            textAlign: TextAlign.center),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 8, right: 8, bottom: 8),
                      child: Container(
                        width: 195,
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
        bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(vertical: 0, horizontal: 2),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: CurvedNavigationBar(
                color: Colors.amber,
                buttonBackgroundColor: Colors.amber,
                backgroundColor: Colors.transparent,
                items: [
                  Icon(Icons.home),
                  Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  Icon(Icons.favorite),
                  Icon(Icons.account_balance)
                ]),
          ),
        ));
  }
}
