
import 'package:demo/utils/constant.dart';
import 'package:flutter/material.dart';

Widget SearchBox() {
  return Positioned(
    bottom: 0,
    left: 0,
    right: 0,
    child: Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      height: 54,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 50,
            color: kPrimaryColor.withOpacity(0.23),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(
                  color: kPrimaryColor.withOpacity(0.5),
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          Image.asset(
            "assets/images/search.png",
            height: 25,
            width: 25,
          ),
        ],
      ),
    ),
  );
}