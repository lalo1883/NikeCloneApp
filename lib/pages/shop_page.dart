import 'package:flutter/material.dart';
import 'package:ecommerce/components/shoe_tile.dart';
import 'package:ecommerce/Model/cart.dart';
import 'package:ecommerce/components/bottom_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:ecommerce/Model/cart.dart';

import '../Model/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  
  void addToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addToCart(shoe);
    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text("Successfully added to cart"),
      content: Text("Check your cart"),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(3)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Search", style: TextStyle(color: Colors.grey[900])),
                    Icon(Icons.search, color: Colors.grey[700],)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Every one flies... but some fly more than others ...", style: TextStyle(color: Colors.grey[700])),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23.0, right: 23, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Hot Picks 🔥", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25)),
                  Text("See All", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    Shoe shoe = value.getItems()[index];
                    return ShoeTile(
                      shoe: shoe,
                      onPressed: () => addToCart(shoe),
                    );
                  }),
            )
          ],
        )
    );
  }
}

