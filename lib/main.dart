// import 'package:beyondpeace/homepage.dart';
import 'package:beyondpeace/homepage.dart';
import 'package:beyondpeace/login.dart';
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
        // '/': (context) => Login(),
        Myroutes.homeroute: (context) => Homepage(),
        Myroutes.loginroute: (context) => Login()
      },
      home: const Login(),
    );
  }
}
