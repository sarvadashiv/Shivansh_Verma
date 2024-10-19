import 'package:classico/products.dart';
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
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 56, 56, 56),
      appBar: AppBar(
          title: const Center(
            child: Text("Brush and Buy",
            style: TextStyle(
              color: Colors.white)),
            
          ),
          backgroundColor: const Color.fromARGB(255, 104, 109, 111),
          leading: IconButton(
            icon:
                SvgPicture.asset('assets/icons/cart.svg', color: Colors.white),
            onPressed: () {},
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0), // Padding around the grid
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            childAspectRatio: 1, // Aspect ratio of each tile
            crossAxisSpacing: 10, // Horizontal space between tiles
            mainAxisSpacing: 10, // Vertical space between tiles
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Card(
              color: Color.fromARGB(255, 104, 109, 111),
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      products[index].image,
                      fit: BoxFit.cover, // Adjust the image to cover the space
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      products[index].title,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}