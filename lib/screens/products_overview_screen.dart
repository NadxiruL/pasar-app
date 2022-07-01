import 'package:flutter/material.dart';
import '../widgets/products_grid.dart';
import '../providers/products.dart';

class ProductsOverviewScreen extends StatelessWidget {
  const ProductsOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //di sini kita akan render grid untuk produk.
      appBar: AppBar(
        title: const Text('El Coffe'),
      ),
      //gridview builder sesuai untuk item yang byk yang kita tak tahu berapa
      body: ProductsGrid(),
    );
  }
}
