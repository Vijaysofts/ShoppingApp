import 'dart:convert';

import 'package:demo/Screens/DashBoard/dash_board_screen.dart';
import 'package:demo/Screens/Login/login_screen.dart';
import 'package:demo/utils/api_services.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _pagestate createState() => _pagestate();
}

class _pagestate extends State<RegisterScreen> {
  var name;
  var contact;
  var email;
  var passwrod;
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _contact = TextEditingController();
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool _changeButton = false;
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/register_logo.png",
                fit: BoxFit.cover,
                height: 250,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Register",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 32.0,
                ),
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (input) =>
                            input!.isEmpty ? "Name Is Required" : null,
                        controller: _name,
                        decoration: InputDecoration(
                          hintText: "xyz..",
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.5))),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue)),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.blueAccent,
                          ),
                          labelText: "Name",
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      TextFormField(
                        validator: (input) => !input!.contains('@')
                            ? "Email Id should be valid"
                            : null,
                        controller: _email,
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
                        height: 5.0,
                      ),
                      TextFormField(
                        validator: (input) => input!.length < 10
                            ? "Enter Valid Contact-No"
                            : null,
                        controller: _contact,
                        keyboardType: TextInputType.phone,
                        maxLength: 10,
                        decoration: InputDecoration(
                          hintText: "0000000000",
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.5))),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue)),
                          prefixIcon: Icon(
                            Icons.call,
                            color: Colors.blueAccent,
                          ),
                          labelText: "Contact No.",
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        controller: _password,
                        validator: (input) => input!.length < 6
                            ? "Password should be more than 6 characters"
                            : null,
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
                                // hidePassword = false;
                                hidePassword = !hidePassword;
                              });
                            },
                            color: Colors.black,
                            icon: Icon(hidePassword
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      InkWell(
                        onTap: () async {
                          setState(() {
                            _changeButton = true;
                          });
                          //  await Future.delayed(Duration(seconds: 5));
                          if (_formkey.currentState!.validate()) {
                            // showLoaderDialog(context);
                            await Future.delayed(Duration(seconds: 3));
                            registerUser();
                            print("data");
                          }
                          return null;
                        },
                        child: AnimatedContainer(
                          duration: Duration(
                            seconds: 2,
                          ),
                          height: 45,
                          width: _changeButton ? 50 : 150,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(
                              _changeButton ? 45 : 8.0,
                            ),
                          ),
                          child: _changeButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Register",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login_page(),
                            ),
                          );
                          //Navigator.pushNamed(context, "/login");
                        },
                        child: Text(
                          "Already Have Account.? Login",
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                ),
                /* child: Form(
                  child:
                  TextFormField(
                    validator: (input) =>
                        input!.isNotEmpty ? "Name Is Required" : null,
                    controller: _name,
                    decoration: InputDecoration(
                      hintText: "xyz..",
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.5))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.blueAccent,
                      ),
                      labelText: "Name",
                    ),
                  ),
                ),*/
              ),
              /* Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Container(
                      child: Text(
                        "Register",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: _name,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.account_box_outlined),
                          labelText: "Name",
                          border: OutlineInputBorder()),
                      validator: (input) =>
                      input!.isNotEmpty ? "Name Is Required" : null,
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: _email,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone),
                          labelText: "Email Id",
                          border: OutlineInputBorder()),
                      validator: (input) =>
                      !input!.contains('@') ? "Email Id should be valid" : null,
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                      onSaved: (value) {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: _password,
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          labelText: "Contact No",
                          border: OutlineInputBorder()),
                      validator: (input) =>
                      input!.length < 10 ? "Enter Valid Contact-No" : null,
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: _cpassword,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          labelText: "Password",
                          border: OutlineInputBorder()),
                      validator: (input) =>
                      input!.length < 6
                          ? "Password should be more than 6 characters"
                          : null,
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                      onSaved: (value) {},
                    ),
                  ),*/
              /* RaisedButton(
                  textColor: Colors.white,
                  color: Colors.red,
                  child: Text('Register'),
                  onPressed: () {
                    showLoaderDialog(context);
                    registerUser();
                  }),
              Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: InkWell(
                    child: Container(
                      child: Text(
                        "Already have an Account ? Login",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login_page(),
                        ),
                      );
                      print("tapped on container");
                    },
                  )),*/
            ],
          ),
        ),
      )),
    );
  }

  void registerUser() async {
    var data = {
      'name': _name.text,
      'mobile': _contact.text,
      'email': _email.text,
      'password': _password.text,
    };

    var res = await APIService().postData(data, 'auth/signup');
    var body = json.decode(res.body);
    //Navigator.pop(context);
    print(body);
    /* if(res.statuscode==200){

    }*/
    if (body['status']) {
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.setString('access_token', body['access_token']);
      localStorage.setString('user', json.encode(body['user']));
      Navigator.push(context,
          new MaterialPageRoute(builder: (context) => Dashboard_page()));
    } else {
      print("Something Went Wrong...");
    }

//print("Successful");
  }

  showLoaderDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: new Row(
        children: [
          CircularProgressIndicator(),
          Container(
              margin: EdgeInsets.only(left: 7), child: Text("Please Wait....")),
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
