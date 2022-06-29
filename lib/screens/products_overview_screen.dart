import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_item.dart';

class ProductsOverviewScreen extends StatelessWidget {
  ProductsOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //di sini kita akan render grid untuk produk.
      appBar: AppBar(
        title: const Text('El Coffe'),
      ),
      //gridview builder sesuai untuk item yang byk yang kita tak tahu berapa
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        //how many product yang kita ada
        itemCount: loadedProducts.length,
        itemBuilder: (context, i) => ProductItem(
          imageUrl: loadedProducts[i].imageUrl ?? '',
          id: loadedProducts[i].id ?? '',
          title: loadedProducts[i].title ?? '',
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
