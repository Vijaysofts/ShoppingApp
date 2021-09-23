import 'package:flutter/material.dart';

Widget bodyData(BuildContext context, Size size) {
  return SafeArea(
    child: SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                height: size.height*0.14,/*130*/
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: InkWell(
                    onTap: () {
                      /*Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home_screen()),
                      );*/
                    },
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
                                    left: 5, top: 0, right: 0, bottom: 2),
                                child: Image.asset(
                                  "assets/images/cooker.jpeg",
                                  height: size.height*0.3,/*100*/
                                  width: size.width*0.22,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 15, right: 0, bottom: 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 5, top: 5, right: 0, bottom: 0),
                                        child: Text(
                                          "Cooker",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        )),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 10,
                                            top: 5,
                                            right: 0,
                                            bottom: 0),
                                        child: Text(
                                          "\$40",
                                          style: TextStyle(
                                            fontSize: 14,
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
                                content: Text("Delete Cart"),
                              ));
                            },
                            child: Container(
                              height: 25,
                              width: 25,
                              margin: EdgeInsets.only(
                                  left: 5, top: 15, right: 15, bottom: 0),
                              child: Image.asset(
                                "assets/images/delete.png",
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
      ),
    ),
  );
}
