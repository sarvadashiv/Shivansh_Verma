// import 'package:classico/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      // ),
      home: MyHomePage()
      );
  }
}
class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 36, 39),
      appBar: AppBar(
        title:const Center(
          child:Text("Brush and Buy"),
        ),
        backgroundColor: const Color.fromARGB(255, 104, 109, 111),
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/cart.svg', color: Colors.white), onPressed: (){},
        )
      ),
    );
  }
}