import 'package:flutter/material.dart';
import 'package:grocery_shop/repository/screens/cart/cartscreen.dart';
import 'package:grocery_shop/repository/screens/category/categoryscreen.dart';
import 'package:grocery_shop/repository/screens/home/homescreen.dart';
import 'package:grocery_shop/repository/screens/print/printscreen.dart';
import 'package:grocery_shop/repository/widgets/uihelper.dart';

class Bottomnavscreen extends StatefulWidget {
  const Bottomnavscreen({super.key});

  @override
  State<Bottomnavscreen> createState() => _BottomnavscreenState();
}

class _BottomnavscreenState extends State<Bottomnavscreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    Homescreen(),
    Cartscreen(),
    Categoryscreen(),
    Printscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // important and useful
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: UiHelper.CustomImage(img: 'home1.png'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: UiHelper.CustomImage(img: 'shoppingbag1.png'),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: UiHelper.CustomImage(img: 'category1.png'),
            label: 'Catrgory',
          ),
          BottomNavigationBarItem(
            icon: UiHelper.CustomImage(img: 'printer1.png'),
            label: 'Print',
          ),
        ],
        type: BottomNavigationBarType.fixed,currentIndex: currentIndex,
        onTap: (index){
         setState(() {
           currentIndex  = index;
         });
      }, // important to allin the items
      ),
    );
  }
}
