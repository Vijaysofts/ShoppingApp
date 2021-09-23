import 'package:demo/Model/product_data_model.dart';
import 'package:demo/Model/product_model.dart';
import 'package:demo/Screens/DashBoard/dash_board_screen.dart';
import 'package:demo/Screens/HomePages/list_body.dart';
import 'package:demo/Screens/HomePages/search_box.dart';
import 'package:demo/Screens/HomePages/top_brands_body.dart';
import 'package:demo/utils/constant.dart';
import 'package:flutter/material.dart';

class Home_Body extends StatefulWidget {
  const Home_Body({Key? key}) : super(key: key);

  @override
  _Home_BodyState createState() => _Home_BodyState();
}

class _Home_BodyState extends State<Home_Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: size.height * 0.22,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 35, right: kDefaultPadding),
                  height: size.height * 0.22 - 27,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Welcome  Jaimin",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ),
                SearchBox(),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 30,
                  ),
                  child: Text(
                    "Recommended",
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 30,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dashboard_page()),
                    );
                  },
                  child: Text(
                    "More",
                    style: TextStyle(fontSize: 18, color: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: size.height * 0.33,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return TopBodys(
                  size,
                  context,
                  data[index],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 30,
                  ),
                  child: Text(
                    "Top Products",
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 30,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dashboard_page()),
                    );
                  },
                  child: Text(
                    "More",
                    style: TextStyle(fontSize: 18, color: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: size.height * 0.35,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return ListBodys(
                  size,
                  context,
                  products[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
