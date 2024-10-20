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
                      Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[Text("Colors"),
                            Row(
                              children: <Widget>[
                                ColorDot(color: Colors.black,isSelected: true,),
                                ColorDot(color: Colors.cyan),
                                ColorDot(color: Colors.green)
                              ]
                          )],
                          ),
                          RichText(text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(text: 'Size\n'
                              ),
                              TextSpan(text: "${product.size} cm",style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold))
                            ]
                          ))
                        ],
                      )
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

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    super.key, required this.color, this.isSelected=false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, right: 10),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color:isSelected? color:Colors.transparent)),
      child: DecoratedBox(
          decoration:
              BoxDecoration(color: color, shape: BoxShape.circle)),
    );
  }
}