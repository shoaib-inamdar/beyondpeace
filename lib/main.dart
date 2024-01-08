// import 'package:beyondpeace/homepage.dart';
import 'package:beyondpeace/pages/entrypage.dart';
import 'package:beyondpeace/pages/homepage.dart';
import 'package:beyondpeace/pages/login.dart';
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
        Myroutes.homeroute: (context) => Homepage(),
        Myroutes.loginroute: (context) => Login()
      },
      home: const Entrypage(),
    );
  }
}
