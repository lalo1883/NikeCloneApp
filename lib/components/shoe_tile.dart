import 'package:flutter/material.dart';
import 'package:ecommerce/Model/cart.dart';
import '../Model/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe, required this.onPressed});
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 40, bottom: 25, top: 25),
      width: 325,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(shoe.imagePath, width: 200, height: 200,),
          Text(shoe.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
          Text("\$${shoe.price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),),
          TextButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
              onPressed: onPressed,
              child: Container(
                width: 110,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Add to cart", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold)),
                    Icon(Icons.shopping_cart, color: Colors.white, size: 20,)
                  ],
                ),
              )
          ),
          SizedBox(height: 10),
          Text(shoe.description, style: TextStyle(color: Colors.grey[700], fontSize: 11),),

        ],
      ),
    );
  }
}

