import 'package:classico/color_and_size.dart';
import 'package:classico/description.dart';
import 'package:classico/product_title_with_image.dart';
import 'package:classico/products.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12, left: 20, right: 20),
                  //height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      Description(product: product),
                      CartCounter()
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int noOfItems=1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlineButton(
          icon: Icons.remove,
          press: (){}
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text("01", style: Theme.of(context).textTheme.headlineMedium,),
        ),
        buildOutlineButton(icon: Icons.add, press: (){})
      ],
    );
  }

  SizedBox buildOutlineButton({required IconData icon, required void Function() press}) {
    return SizedBox(
        width: 40,
        height: 36,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13))),
          onPressed: press, child: Icon(icon)),
      );
  }
}