import 'package:demo/Screens/Login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash_Screen extends StatefulWidget {
  @override
  _splashstate createState() => _splashstate();
}

class _splashstate extends State<Splash_Screen> {

  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 2,
      navigateAfterSeconds: new Login_page(),
      title: new Text(
        'Welcome To Shopping App',
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
      ),
      image: Image.asset("assets/images/logo.jpeg"),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(
        fontSize: 12.0,
      ),
      photoSize: 100.0,
      onClick: () => print(
        "Flutter Click..",
      ),
      loaderColor: Colors.deepPurple,
    );
  }
}
