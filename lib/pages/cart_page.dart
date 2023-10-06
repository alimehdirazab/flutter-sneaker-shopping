import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shopping_app/components/cart_item.dart';
import 'package:sneaker_shopping_app/model/cart.dart';
import 'package:sneaker_shopping_app/model/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'My Cart',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  SizedBox(height: 30),
                  Expanded(
                      child: ListView.builder(
                    itemCount: value.getUserCart().length,
                    itemBuilder: (context, index) {
                      //get each shoe
                      Shoe individualShoe = value.getUserCart()[index];

                      //return cart item
                      return CartItem(
                        shoe: individualShoe,
                      );
                    },
                  ))
                ],
              ),
            ));
  }
}
