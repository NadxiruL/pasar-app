import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  //const ProductItem(String? id, {Key? key, required this.id, required this.title, required this.imageUrl}) : super(key: key);
  final String id;
  final String title;
  final String imageUrl;

  ProductItem({required this.id, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    // Widget ini untuk paparan grid item kelihatan mcm mana.
    return GridTile(child: Image.network(imageUrl));
  }
}
