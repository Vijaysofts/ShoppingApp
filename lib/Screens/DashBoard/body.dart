import 'package:demo/Model/product_model.dart';
import 'package:demo/Screens/DashBoard/category.dart';
import 'package:demo/Screens/DashBoard/item_cart.dart';
import 'package:demo/Screens/ProductDetail/product_hedder.dart';
import 'package:demo/utils/constant.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          //SearchBox(onChanged: (value) {}),
          CategoryList(),
          SizedBox(height: kDefaultPadding / 2),
          Expanded(
            child: Stack(
              children: <Widget>[
                // Our background
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(top: 70),
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
                ),
                ListView.builder(
                  // here we use our demo procuts list
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: products[index],
                    press: () {

                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
