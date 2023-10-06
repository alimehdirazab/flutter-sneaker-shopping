import 'package:flutter/material.dart';
import 'package:sneaker_shopping_app/model/shoe.dart';

class Cart extends ChangeNotifier {
  //shoes list details
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Nike Air',
      price: '180',
      imagePath: 'assets/images/shoes_1.png',
      description:
          'The Nike Air Max 270 is a stylish and comfortable lifestyle shoe. ',
    ),
    Shoe(
      name: 'Adidas Ultraboost',
      price: '200',
      imagePath: 'assets/images/shoes_2.png',
      description:
          'The Adidas Ultraboost is a high-performance running shoe known for its energy-returning Boost midsole.',
    ),
    Shoe(
      name: 'Puma Cali',
      price: '80',
      imagePath: 'assets/images/shoes_3.png',
      description:
          'The Puma Cali is a classic tennis-inspired sneaker with a clean and minimalist design.',
    ),
    Shoe(
      name: 'New Balance ',
      price: '175',
      imagePath: 'assets/images/shoes_4.png',
      description:
          'The New Balance 990v5 is a premium running shoe known for its comfort and stability. ',
    ),
    Shoe(
      name: 'Taylor',
      price: '55',
      imagePath: 'assets/images/shoes_5.png',
      description:
          'The Converse Chuck Taylor All Star is an iconic canvas sneaker that has been a classic for generations.',
    ),
  ];

//list of shoes in user cart

  List<Shoe> userCart = [];

//get list of shoes for sale

  List<Shoe> getShoeList() {
    return shoeShop;
  }

//get user cart
  List<Shoe> getUserCart() {
    return userCart;
  }

//add item to cart
  void addItem(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

//remove item from cart
  void removeItem(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
