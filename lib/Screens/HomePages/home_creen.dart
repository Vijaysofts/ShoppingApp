import 'package:demo/Model/product_model.dart';
import 'package:demo/Screens/HomePages/home_body.dart';
import 'package:demo/utils/constant.dart';
import 'package:flutter/material.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  _Home_screenState createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: drawerItem,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0,
        /*leading: IconButton(
          padding: EdgeInsets.only(left: kDefaultPadding),
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            */ /*Navigator.pop(context);*/ /*
          },
        ),*/
        centerTitle: false,
      ),
      body: Home_Body(),
    );
  }

  final drawerItem = ListView(
    children: <Widget>[
      ListTile(
        title: InkWell(
          onTap: () {},
          child: const Text(
            "Categories",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
      ListTile(
        title: InkWell(
          onTap: () {},
          child: const Text(
            "Wish List",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      )
    ],
  );
}
