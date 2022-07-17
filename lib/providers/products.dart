import 'package:flutter/material.dart';
import './product.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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

  //var _ShowFavoritesOnly = false;

  //getter // will return a list of product.
  List<Product> get items {
    // if (_ShowFavoritesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite!).toList();
    // }
    //return a of items
    return _items;
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite!).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  // void showFavoritesOnly() {
  //   _ShowFavoritesOnly = true;
  //   notifyListeners();
  // }
  //
  // void showAll() {
  //   _ShowFavoritesOnly = false;
  //   notifyListeners();
  // }

  Future<void> fetchAndSetProducts() async {
    final url = Uri.parse(
        'https://flutter-app-ed219-default-rtdb.asia-southeast1.firebasedatabase.app/products.json');
    try {
      final response = await http.get(url);
      print(json.decode(response.body));
    } catch (error) {
      throw (error);
    }
  }

  Future<void> addProduct(Product product) async {
    final url = Uri.parse(
        'https://flutter-app-ed219-default-rtdb.asia-southeast1.firebasedatabase.app/products.json');
    try {
      final response = await http.post(
        url,
        body: json.encode({
          'title': product.title,
          'price': product.price,
          'description': product.description,
          'imageUrl': product.imageUrl,
          'isFavorite': product.isFavorite,
        }),
      );

      final newProduct = Product(
        id: json.decode(response.body)['name'],
        title: product.title,
        description: product.description,
        price: product.price,
        imageUrl: product.imageUrl,
      );
      _items.add(newProduct);
      // _items.insert(0, newProduct); // at the start of the list.
      notifyListeners();
    } catch (error) {
      print('error');
      throw error;
    }
  }
  //pakai catcherror di sini sbb bia semua code di atas execute.
  // ..catchError((error) {
  //   print(error);
  //   throw error;
  // });

  void updateProduct(String id, Product newProduct) {
    final prodIndex = _items.indexWhere((prod) => prod.id == id);

    if (prodIndex >= 0) {
      _items[prodIndex] = newProduct;
      notifyListeners();
    } else {
      print('.....');
    }
  }

  void deleteProduct(String id) {
    _items.removeWhere((prod) => prod.id == id);
    notifyListeners();
  }
}
