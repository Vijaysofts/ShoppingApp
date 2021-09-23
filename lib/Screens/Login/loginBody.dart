import 'dart:convert';

import 'package:demo/Screens/NavigationMain%20/navigation_screen.dart';
import 'package:demo/Screens/Register/register_screen.dart';
import 'package:demo/utils/api_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Login_screen extends StatefulWidget {
  @override
  _mypagestate createState() => _mypagestate();
}

class _mypagestate extends State<Login_screen> {
  bool _isLoading = false;

  //bool _hidepass = true;

  bool hidePassword = true;
  bool isApiCallProcess = false;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  String _name = "";
  bool _changeButton = false;
  final FocusScopeNode _node = FocusScopeNode();

  @override
  void initState() {
    super.initState();
    _isLoading = false;
    // loginRequestModel = new LoginRequestModel(email: '', password: '');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        child: _uiSetup(context),
      ),
    );
  }

  Widget _uiSetup(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
                height: 300,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $_name",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Form(
                  key: globalFormKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (input) => !input!.contains('@')
                            ? "Email Id should be valid"
                            : null,
                        controller: _email,
                        onChanged: (value) {
                          setState(() {
                            _name = value;
                          });
                        },
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        autofocus: true,
                        onFieldSubmitted: (v){
                        FocusScope.of(context).requestFocus(_node);
                      },
                        decoration: InputDecoration(
                          hintText: "xyz@gmail.com",
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.5))),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue)),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.blueAccent,
                          ),
                          labelText: "Email",
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        obscureText: hidePassword,
                        controller: _password,
                        validator: (input) => input!.length < 6
                            ? "Password should be more than 6 characters"
                            : null,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.5))),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue)),
                          labelText: "Password",
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.blueAccent,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                hidePassword = !hidePassword;
                              });
                            },
                            color: Colors.blueAccent,
                            icon: Icon(
                              hidePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Material(
                        color: _changeButton ? Colors.green : Colors.blue,
                        borderRadius: BorderRadius.circular(
                          _changeButton ? 45 : 8.0,
                        ),
                        child: InkWell(
                          onTap: () async {
                            if (globalFormKey.currentState!.validate()) {
                              setState(() {
                                _changeButton = true;
                              });
                              await Future.delayed(Duration(seconds: 3));
                              await Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Navigation_Page(),
                                ),
                              );
                              // loginUser();
                              setState(() {
                                _changeButton = false;
                              });
                            }
                          },
                          child: AnimatedContainer(
                            duration: Duration(
                              seconds: 2,
                            ),
                            height: 45,
                            width: _changeButton ? 50 : 150,
                            alignment: Alignment.center,
                            child: _changeButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text("------- Login With -------"),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {},
                            splashColor: Colors.cyan,
                            child: Container(
                              width: 35.0,
                              height: 35.0,
                              decoration: new BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset("assets/images/google.png"),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            splashColor: Colors.cyan,
                            child: Container(
                              width: 35.0,
                              height: 35.0,
                              decoration: new BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset("assets/images/facebook.png"),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterScreen(),
                            ),
                          );
                          //Navigator.pushNamed(context, "/register");
                        },
                        child: Text(
                          "Don't Have Account.? Register",
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  void loginUser() async {
    var data = {
      'email': _email.text,
      'password': _password.text,
    };

    var res = await APIService().postData(data, 'auth/login');
    var body = json.decode(res.body);
    // Navigator.pop(context);
    /* if (res.statuscode == 200) {
      print("Successful");
      */ /*SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.setString('access_token', body['access_token']);
      localStorage.setString('user', json.encode(body['user']));*/ /*
    }*/
    print(body);

    /*if (body['message']) {
      Navigator.pop(context);
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.setString('access_token', body['access_token']);
      localStorage.setString('user', json.encode(body['user']));
      Navigator.push(context,
          new MaterialPageRoute(builder: (context) => Dashboard_page()));
    } else {
      Navigator.pop(context);
      print("Something Went Wrong...");
    }*/
  }

//print("Successful");

  showLoaderDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: new Row(
        children: [
          CircularProgressIndicator(),
          Container(
              margin: EdgeInsets.only(left: 7), child: Text("Please Wait...")),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
