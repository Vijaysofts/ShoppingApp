import 'package:flutter/material.dart';

Widget BottomNavigation(BuildContext context, Size size) {
  return Container(
    height: size.height*0.06,/*50*/
    margin: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 5),
    width: double.infinity,
    color: Colors.white70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Container(
            margin: EdgeInsets.only(left: 20, top: 0, right: 0, bottom: 0),
            child: Row(
              children: [
                Text(
                  "Total :",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 10, top: 0, right: 0, bottom: 0),
                  child: Text(
                    "\$40",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 0, top: 0, right: 15, bottom: 0),
            width: size.width*0.1,/*50*/
            child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Buy Product"),
                ));
              },
              child: Text(
                "Buy",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    ),
  );
}
