import 'package:flutter/material.dart';

import 'home_page.dart';


class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("lib/img/img_6.png",
              height: 240,
              width: 300,),
            ),
            // SizedBox(height: 20,),
            Text("Just Do It", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text("Sneakers with premium quality and also comfort in your feet",
                style: TextStyle(fontSize: 15, color: Colors.grey[600]),
                textAlign: TextAlign.center,
                ),
            ),
            Container(
              width: 350,
              height: 70,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Text("Shop Now", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  backgroundColor: Colors.black
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
