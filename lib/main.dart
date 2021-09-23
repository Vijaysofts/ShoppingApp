import 'package:demo/Screens/Login/login_screen.dart';
import 'package:demo/Screens/Register/register_screen.dart';
import 'package:demo/Screens/Splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screens/NavigationMain /navigation_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: GoogleFonts.lato().fontFamily,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Splash_Screen(),
      routes: {
        "/login": (context) => Login_page(),
        "/register": (context) => RegisterScreen(),
        "/navigation": (context) => Navigation_Page(),
      },
    );
  }
}
