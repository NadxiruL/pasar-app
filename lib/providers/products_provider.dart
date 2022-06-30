import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductsProvider with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Classic blend',
      description: 'Classic blend',
      price: 29.99,
      imageUrl:
          'https://img.shoppegram.com/coffee_mockup_npmj09172s1v7mmmzwid.png?w=1000',
    ),
    Product(
      id: 'p2',
      title: 'Royal blend',
      description: 'Royal blend',
      price: 59.99,
      imageUrl:
          'https://img.shoppegram.com/coffee_mockup_royal_67ndacfkeaeczqobai23.png?w=1000',
    ),
    Product(
      id: 'p3',
      title: 'JB blend',
      description: 'JB blend',
      price: 19.99,
      imageUrl:
          'https://img.shoppegram.com/coffee_mockup_jb_pyadayrpefwwnixic1df.png?w=1000',
    ),
    Product(
      id: 'p4',
      title: 'Aceh Gayo',
      description: 'Aceh Gayo',
      price: 49.99,
      imageUrl:
          'https://img.shoppegram.com/coffee_gayo_peaberry_jqqjsqtz73ijlmzy9scy.jpg?w=1000',
    ),
  ];

  //getter // will return a list of product.
  List<Product> get items {
    //return a of items
    return [...items];
  }
}
