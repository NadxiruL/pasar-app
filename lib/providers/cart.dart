import 'package:flutter/foundation.dart';

class CartItem {
  final String? id;
  final String? title;
  final int? quantity;
  final double? price;

  CartItem(
      {required this.id,
      required this.title,
      required this.quantity,
      required this.price});
}

class Cart with ChangeNotifier {
  Map<String, CartItem>? _items;

  Map<String, CartItem>? get items {
    return {...?_items};
  }

  void addItem(
    String productId,
    String price,
    String title,
    String quantity,
  ) {
    if (_items?.containsKey(productId) == true) {
      //...
      _items?.update(
        productId,
        (exisitingCartItem) => CartItem(
          id: exisitingCartItem.id,
          title: exisitingCartItem.title,
          price: exisitingCartItem.price,
          quantity: exisitingCartItem.quantity! + 1,
        ),
      );
    } else {
      _items?.putIfAbsent(
        productId,
        () => CartItem(
          id: DateTime.now().toString(),
          title: title,
          price: price as double,
          quantity: 1,
        ),
      );
    }
  }
}
