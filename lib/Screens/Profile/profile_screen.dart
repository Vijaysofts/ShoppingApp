import 'package:demo/Screens/Profile/profileBody.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile_page extends StatefulWidget {
  @override
  _profilestate createState() => _profilestate();
}

class _profilestate extends State<Profile_page> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          alignment: Alignment.centerLeft,
          child:const Text(
            "Profile",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: bodyProfile(size,context),
    );
  }
}
