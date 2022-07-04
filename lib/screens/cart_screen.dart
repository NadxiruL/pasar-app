import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart.dart' show Cart;
import '../widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
        ),
      ),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(15),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(fontSize: 20),
                  ),
                  //tak perlu size box sbb ada spacebetween di atas.
                  // SizedBox(
                  //   width: 10,
                  // ),
                  //a rounded corner widget // for price.
                  Chip(
                    label: Text('\$${cart.totalAmount}'),
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('ORDERED!');
                    },
                    child: Text(
                      'Order Now',
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cart.items!.length,
              itemBuilder: (ctx, i) => CartItem(
                id: cart.items!.values.toList()[i].id,
                productId: cart.items?.keys.toList()[i],
                price: cart.items!.values.toList()[i].price,
                quantity: cart.items!.values.toList()[i].quantity,
                title: cart.items!.values.toList()[i].title ?? '',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
