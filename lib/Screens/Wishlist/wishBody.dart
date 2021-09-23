
import 'package:flutter/material.dart';

Widget wishBody(BuildContext context, Size size) {
  return SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            width: double.infinity,
            height: size.height*0.17,
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: InkWell(
                onTap: () {},
                child: Card(
                  elevation: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                left: 10, top: 0, right: 0, bottom: 2),
                            child: Image.asset(
                              "assets/images/lunch_box.jpeg",
                              height: size.height*1,/*110*/
                              width: size.width*0.3,/*100*/
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 10, top: 20, right: 0, bottom: 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 5, top: 5, right: 0, bottom: 0),
                                    child: Text(
                                      "Lunch Box",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    )),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 10,
                                        top: 10,
                                        right: 0,
                                        bottom: 0),
                                    child: Text(
                                      "\$20",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Remove Form WishList"),
                          ));
                        },
                        child: Container(
                          height: 25,
                          width: 25,
                          margin: EdgeInsets.only(
                              left: 5, top: 15, right: 15, bottom: 0),
                          child: Image.asset(
                            "assets/images/minus.png",
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    ),
  );
}