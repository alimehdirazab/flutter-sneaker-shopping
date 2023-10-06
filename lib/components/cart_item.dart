import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shopping_app/model/cart.dart';
import 'package:sneaker_shopping_app/model/shoe.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  //remove item from cart
  void deleteItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItem(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(
          onPressed: () => deleteItemFromCart(),
          icon: Icon(Icons.delete),
        ),
      ),
    );
  }
}
