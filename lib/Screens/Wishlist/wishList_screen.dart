import 'package:demo/Screens/Wishlist/wishBody.dart';
import 'package:flutter/material.dart';

class WishList_page extends StatefulWidget {
  @override
  _wishListstate createState() => _wishListstate();
}

class _wishListstate extends State<WishList_page> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          alignment: Alignment.centerLeft,
          child:const Text(
            "Wish List",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: wishBody(context,size),
    );
  }
}
