import 'package:ecommerce/pages/cart_page.dart';
import 'package:ecommerce/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/components/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: _pages[_selectedIndex],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
            )
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80.0, bottom: 50),
                  child: Image.asset("lib/img/img_7.png", width: 180,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 25, bottom: 25),
                  child: Row(
                    children: [
                      Icon(Icons.home, color: Colors.white,),
                      SizedBox(width: 15,),
                      Text("Home", style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 25, bottom: 25),
                  child: Row(
                    children: [
                      Icon(Icons.info_rounded, color: Colors.white,),
                      SizedBox(width: 15,),
                      Text("About", style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 25, bottom: 35),
              child: Row(
                children: [
                  Icon(Icons.logout_outlined, color: Colors.white,),
                  SizedBox(width: 15,),
                  Text("Logout", style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}