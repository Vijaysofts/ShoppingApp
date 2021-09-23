import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget bodyProfile(Size size, BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 40,
        ),
        Container(
          height: size.height * 0.18,
          /*180*/
          width: size.width * 0.4,
          /*180*/
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Image.asset(
            "assets/images/user.png",
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: size.height * 0.57,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                height: size.height * 0.57,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                  color: Colors.lightBlueAccent,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Padding(
                            padding:
                                EdgeInsets.only(left: 60, top: 50, right: 1),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.person,
                                      size: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " Name ::",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 50, right: 1),
                          child: Text(
                            "Jaimin Raval",
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                            padding:
                                EdgeInsets.only(left: 58, top: 30, right: 1),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.phone_android,
                                      size: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " Contact ::",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 12, top: 30, right: 1),
                          child: Text(
                            "8545121455",
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                            padding:
                                EdgeInsets.only(left: 60, top: 30, right: 1),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.email_outlined,
                                      size: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " Email ::",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 12, top: 30, right: 1),
                          child: Text(
                            "test@123gmail.com",
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                            padding:
                                EdgeInsets.only(left: 60, top: 30, right: 1),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.home,
                                      size: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " Address ::",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 12, top: 30, right: 1),
                          child: Text(
                            "kalupur",
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    Column(
                      children: [
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text('LogOut ?'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'Cancel'),
                                      child: const Text('Cancel'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        if (Platform.isAndroid) {
                                          SystemNavigator.pop();
                                        } else if (Platform.isIOS) {
                                          exit(0);
                                        }
                                      },
                                      child: const Text('OK'),
                                    ),
                                  ],
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white, // background
                              onPrimary: Colors.cyan, // foreground
                            ),
                            child: Text(
                              "LogOut",
                              style: TextStyle(
                                color: Colors.blueAccent,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
