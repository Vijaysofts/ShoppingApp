import 'package:demo/Model/product_model.dart';
import 'package:demo/Screens/DashBoard/dash_board_screen.dart';
import 'package:flutter/material.dart';

Widget CategoryData(Product product, Size size, BuildContext context) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: double.infinity,
          height: size.height * 0.22,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dashboard_page()),
              );
            },
            splashColor: Colors.tealAccent,
            borderRadius: BorderRadius.circular(20.0),
            child: Card(
              margin: EdgeInsets.all(5.0),
              color: Colors.white,
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: size.height * 0.12,
                            width: size.width * 0.25,
                            margin: EdgeInsets.only(
                                left: 0, top: 10, right: 0, bottom: 0),
                            child: Image.asset(
                              product.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                left: 0, top: 0, right: 0, bottom: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 0, top: 5, right: 0, bottom: 0),
                                    child: Text(
                                      product.title,
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    )),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 0, top: 10, right: 0, bottom: 0),
                                    child: Text(
                                      "\$${product.price}",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.green,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
