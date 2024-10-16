import 'package:flutter/material.dart';

import '../Model/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 40, bottom: 25, top: 25),
      width: 325,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(shoe.imagePath, width: 150, height: 200,),
          Text(shoe.name),
          Text("\$ ${shoe.price}"),
          Text(shoe.description),
          ElevatedButton(onPressed: (){}, child: Icon(Icons.add))
        ],
      ),
    );
  }
}

