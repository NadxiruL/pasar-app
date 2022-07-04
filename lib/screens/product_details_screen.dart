import 'package:flutter/material.dart';
import '../providers/products.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  // final double price;
  // ProductDetailScreen(this.title, this.price);

  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context)!.settings.arguments as String; // is the id!
// here we get all data for that id
    //get items with a specific id
    // final loadedProducts = Provider.of<Products>(context)
    //     .items
    //     .firstWhere((prod) => prod.id == productId);
    final loadedProducts =
        Provider.of<Products>(context, listen: false).findById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          loadedProducts.title ?? '',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: SizedBox(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  loadedProducts.imageUrl.toString(),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              loadedProducts.price.toString(),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              width: double.infinity,
              child: Text(
                loadedProducts.description.toString(),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
