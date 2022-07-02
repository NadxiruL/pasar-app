import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/product_details_screen.dart';
import '../providers/product.dart';
import '../providers/cart.dart';

class ProductItem extends StatelessWidget {
  //const ProductItem(String? id, {Key? key, required this.id, required this.title, required this.imageUrl}) : super(key: key);
  // final String id;
  // final String title;
  // final String imageUrl;
  //
  // ProductItem({required this.id, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    // Widget ini untuk paparan grid item kelihatan mcm mana.
    //Clip Rounded Rectangle
    final cart = Provider.of<Cart>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDetailScreen.routeName,
                arguments: product.id);
          },
          child: Image.network(
            product.imageUrl ?? '',
            fit: BoxFit.cover,
          ),
        ),
        //untuk bar hitam pada image
        footer: GridTileBar(
          backgroundColor: Colors.black38,
          leading: IconButton(
            icon: Icon(
              product.isFavorite! ? Icons.favorite : Icons.favorite_border,
            ),
            onPressed: () {
              product.toggleIsFavorite();
            },
            // color: Theme.of(context).,
            color: Colors.cyanAccent,
          ),
          title: Text(
            product.title ?? '',
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: Icon(Icons.add_shopping_cart),
            onPressed: () {
              cart.addItem(
                product.id.toString(),
                product.price as double,
                product.title.toString(),
                product.quantity ?? '',
              );
            },
            // color: Theme.of(context).accentColor,
            color: Colors.cyanAccent,
          ),
        ),
      ),
    );
  }
}
