import 'package:flutter/material.dart';
import 'package:classico/products.dart';

class Tiles extends StatelessWidget {
  const Tiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0), // Padding around the grid
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            childAspectRatio: 1, // Aspect ratio of each tile
            crossAxisSpacing: 10, // Horizontal space between tiles
            mainAxisSpacing: 10, // Vertical space between tiles
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Card(
              color: const Color.fromARGB(255, 104, 109, 111),
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      products[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      products[index].title,
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text("\$${products[index].price}",
                      style: const TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}