import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 104, 109, 111),
        appBar: AppBar(
          title:Text("Brush and Buy"),
          backgroundColor: const Color.fromARGB(255, 28, 93, 183),
        ),
        body: Center(
            child: Image(
            image: AssetImage('Images/pixl.png'),
          ),
        ),
      ),
    );
  }
}