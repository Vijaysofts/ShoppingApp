import 'package:demo/Screens/Cart/bottomBar.dart';
import 'package:demo/Screens/Cart/cartBody.dart';
import 'package:flutter/material.dart';

class Cart_page extends StatefulWidget {
  @override
  _cartstate createState() => _cartstate();
}

class _cartstate extends State<Cart_page> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          alignment: Alignment.centerLeft,
          child:const Text(
            "Cart",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(context,size),
      body: bodyData(context,size),
    );
  }
}
