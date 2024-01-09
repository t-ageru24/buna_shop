// import 'package:flutter/buna_shop/constant.dart';
import 'package:buna_shop/components/bottom_nav_bar.dart';
import 'package:buna_shop/pages/shop_page.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/constant.dart';
import '../constant.dart';
import 'cart_page.dart';

// import '../constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

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
    ShopPage(),

    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
