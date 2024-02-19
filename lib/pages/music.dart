import 'package:beyondpeace/components/musicpagecontent.dart';
import 'package:flutter/material.dart';

class Music extends StatelessWidget {
  const Music({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        color: Colors.blue,
        child: ListView(
          children: [
            Musicpagecontent(),
            Musicpagecontent(),
            Musicpagecontent(),
            Musicpagecontent(),
            Musicpagecontent(),
            Musicpagecontent(),
          ],
        ),
      ),
    );
  }
}
