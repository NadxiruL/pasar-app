import 'package:flutter/material.dart';
import 'package:pasar_app/providers/cart.dart';
import 'package:pasar_app/screens/cart_screen.dart';
import 'package:provider/provider.dart';
import './screens/products_overview_screen.dart';
import './screens/product_details_screen.dart';
import './providers/products.dart';
import 'package:pasar_app/providers/orders.dart';
import './screens/orders_screen.dart';
import './screens/user_product_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          //provider 4.0 dan ke atas perlu guna create // 3.0 ke bawah use builder
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          //provider 4.0 dan ke atas perlu guna create // 3.0 ke bawah use builder
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        )
      ],
      child: MaterialApp(
        title: 'El Coffee',
        theme: ThemeData(
          primarySwatch: Colors.cyan,
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrdersScreen.routeName: (ctx) => OrdersScreen(),
          UserProductsScreen.routeName: (ctx) => UserProductsScreen(),
        },
      ),
    );
  }
}
