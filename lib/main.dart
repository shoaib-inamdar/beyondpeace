// import 'package:beyondpeace/homepage.dart';
import 'package:beyondpeace/pages/doctor.dart';
import 'package:beyondpeace/pages/entrypage.dart';
import 'package:beyondpeace/pages/mainpage.dart';
import 'package:beyondpeace/pages/login.dart';
import 'package:beyondpeace/pages/mentalexercise.dart';
import 'package:beyondpeace/pages/music.dart';
// import 'package:beyondpeace/pages/musicplayer.dart';
import 'package:beyondpeace/utils/routes.dart';
import 'package:flutter/material.dart';
// import 'package:beyondpeace/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        // '/': (context) => Entrypage(),
        Myroutes.mainroute: (context) => Mainpage(),
        Myroutes.loginroute: (context) => Login(),
        Myroutes.mentalexerciseroute: (context) => Mentalexercise(),
        Myroutes.mentalmusicroute: (context) => Music(),
        Myroutes.doctorcommunicateroute: (context) => Doctorcall(),
        // Myroutes.musicroute: (context) => Musicplayer()
      },
      home: const Entrypage(),
    );
  }
}
