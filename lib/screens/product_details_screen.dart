import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  // final double price;
  // ProductDetailScreen(this.title, this.price);

  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings as String; // is the id!
// here we get all data for that id
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'title',
        ),
      ),
    );
  }
}
