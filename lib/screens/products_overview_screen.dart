import 'package:flutter/material.dart';
import 'package:pasar_app/screens/cart_screen.dart';
import 'package:pasar_app/widgets/app_drawer.dart';
import '../widgets/products_grid.dart';
import '../widgets/badge.dart';
import 'package:provider/provider.dart';
import '../providers/cart.dart';
// import '../providers/products.dart';

enum FilterOptions {
  Favorites,
  All,
}

class ProductsOverviewScreen extends StatefulWidget {
  const ProductsOverviewScreen({Key? key}) : super(key: key);

  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    //set listen to false cos no need data changes
    // all is need to access that container , so can call two methds
    //final productsContainer = Provider.of<Products>(context, listen: false);
    return Scaffold(
      //di sini kita akan render grid untuk produk.
      appBar: AppBar(
        title: const Text(
          'Ngopi',
        ),
        actions: [
          PopupMenuButton(
            onSelected: (FilterOptions SelectedValue) {
              //kita nak tapi kalo klik
              setState(() {
                if (SelectedValue == FilterOptions.All) {
                  _showOnlyFavorites = true;
                } else {
                  _showOnlyFavorites = false;
                }
              });
            },
            icon: Icon(
              Icons.more_vert,
            ),
            itemBuilder: (_) => [
              const PopupMenuItem(
                child: Text('All Favorites'),
                value: FilterOptions.Favorites,
              ),
              const PopupMenuItem(
                child: Text('Show All'),
                value: FilterOptions.All,
              ),
            ],
          ),
          Consumer<Cart>(
            builder: (_, cart, ch) => Badge(
              child: ch!,
              value: cart.itemCount.toString(),
              color: Colors.cyan,
            ),
            child: IconButton(
              icon: Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(CartScreen.routeName);
              },
            ),
          ),
        ],
      ),
      drawer: AppDrawer(),
      //gridview builder sesuai untuk item yang byk yang kita tak tahu berapa
      body: ProductsGrid(
        showFavs: _showOnlyFavorites,
      ),
    );
  }
}
