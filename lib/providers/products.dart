import 'package:flutter/material.dart';
import '../models/product.dart';

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Brazil Cerrado',
      description: 'Brazil Cerrado',
      price: 29.99,
      imageUrl:
          'https://eicd58qj5vd.exactdn.com/sg/wp-content/uploads/sites/2/2018/12/Small-WS-9.jpg?strip=all&lossy=1&resize=475%2C475&ssl=1',
    ),
    Product(
      id: 'p2',
      title: 'Colombia Altura',
      description: 'Colombia Altura',
      price: 59.99,
      imageUrl:
          'https://eicd58qj5vd.exactdn.com/sg/wp-content/uploads/sites/2/2018/12/Small-WS-3.jpg?strip=all&lossy=1&resize=475%2C475&ssl=1',
    ),
    Product(
      id: 'p3',
      title: 'Colombia Huila Decaf',
      description: 'Colombia Huila Decaf',
      price: 19.99,
      imageUrl:
          'https://eicd58qj5vd.exactdn.com/sg/wp-content/uploads/sites/2/2018/12/Small-WS-7.jpg?strip=all&lossy=1&resize=475%2C475&ssl=1',
    ),
    Product(
      id: 'p4',
      title: 'Ethiopia Yirgacheffe',
      description: 'Ethiopia Yirgacheffe',
      price: 49.99,
      imageUrl:
          'https://eicd58qj5vd.exactdn.com/sg/wp-content/uploads/sites/2/2018/12/Small-WS-6.jpg?strip=all&lossy=1&resize=475%2C475&ssl=1',
    ),
  ];

  //getter // will return a list of product.
  List<Product> get items {
    //return a of items
    return _items;
  }

  void addProduct() {
    notifyListeners();
  }
}
