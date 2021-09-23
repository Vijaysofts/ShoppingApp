import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:demo/Screens/Cart/cart_screen.dart';
import 'package:demo/Screens/Categories/category_screen.dart';
import 'package:demo/Screens/DashBoard/dash_board_screen.dart';
import 'package:demo/Screens/HomePages/home_creen.dart';
import 'package:demo/Screens/Profile/profile_screen.dart';
import 'package:demo/Screens/Wishlist/wishList_screen.dart';
import 'package:flutter/material.dart';

class Navigation_Page extends StatefulWidget {
  @override
  _navigatstate createState() => _navigatstate();
}

class _navigatstate extends State<Navigation_Page> {
  final List<Widget> _tabItems = [
    /*Dashboard_page()*/
    Home_screen(),
    Category_page(),
    Cart_page(),
    WishList_page(),
    Profile_page()
  ];
  int _activePage = 0;

  @override
  Widget build(BuildContext context) {
    return navBody();
  }

  Widget navBody() {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.greenAccent,
        animationDuration: Duration(
          milliseconds: 200,
        ),
        animationCurve: Curves.bounceInOut,
        height: 50,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 25,
            color: Colors.blue,
          ),
          Icon(
            Icons.category,
            size: 25,
            color: Colors.blue,
          ),
          Icon(
            Icons.shopping_cart,
            size: 25,
            color: Colors.blue,
          ),
          Icon(
            Icons.favorite,
            size: 25,
            color: Colors.blue,
          ),
          Icon(
            Icons.person_pin,
            size: 25,
            color: Colors.blue,
          ),
        ],
        onTap: (index) {
          //Handle button tap
          setState(() {
            _activePage = index;
          });
          //print(index);
        },
      ),
      body: _tabItems[_activePage],
    );
  }
}
