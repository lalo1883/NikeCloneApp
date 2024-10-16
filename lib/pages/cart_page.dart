import 'package:ecommerce/components/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommerce/Model/cart.dart';
import 'package:ecommerce/Model/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Expanded( // Corregido
            child: ListView.builder(
              itemCount: value.getCart().length,
              itemBuilder: (context, index) {
                Shoe shoe = value.getCart()[index];
                return CartItem(shoe: shoe);
              },
            ),
          ),
        ],
      ),
    );

  }
}
