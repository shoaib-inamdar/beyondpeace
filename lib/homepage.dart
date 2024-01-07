import 'package:flutter/material.dart';

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
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 100,
                height: 200,
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
            Container(
              width: 300,
              height: 230,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      width: 200,
                      height: 150,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(20)),
                        color: Colors.redAccent,
                      ),
                      child: Text(
                        arrContents[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white),
                      ),
                    ),
                  );
                },
                itemCount: arrContents.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Container(
              height: 250,
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
                    padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
                    child: Container(
                      width: 195,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.orangeAccent,
                      ),
                      child: Text('Special Events',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white),textAlign: TextAlign.center,),
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
            Container(
              width: 300,
              height: 230,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      width: 200,
                      height: 150,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(20)),
                        color: Colors.green,
                      ),
                      child: Text(
                        arrContents[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white),
                      ),
                    ),
                  );
                },
                itemCount: arrContents.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Container(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 8,bottom: 8),
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
                    padding: const EdgeInsets.only(top: 10, left: 8, right: 8,bottom: 8),
                    child: Container(
                      width: 195,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.indigoAccent,
                      ),
                      child: Text('Record of Medical Reports',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white),textAlign: TextAlign.center,),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
