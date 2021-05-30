import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/utilites/constant.dart';
import 'package:flutter_application_1/screen/SignupScreen.dart';
import 'package:flutter_application_1/screen/homeScreen.dart';

class loginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  bool _isHiddeen = true;

  _layoutBuilder(BoxConstraints height) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          style: labelStyle,
        ),
        SizedBox(
          height: height.maxHeight * 0.01,
        ),
        Container(
          decoration: boxDecorationStyle,
          alignment: Alignment.bottomLeft,
          height: height.maxHeight * 0.1,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: 'Enter Your Email',
              hintStyle: hintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var container = (BoxConstraints height) {
      Container(
        alignment: Alignment.bottomLeft,
        height: height.maxHeight * 0.1,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14.0),
            prefixIcon: Icon(
              Icons.email,
              color: Colors.white,
            ),
            hintText: 'Enter Your Email',
          ),
        ),
      );
    };
    return Scaffold(
        body: SafeArea(
            child: Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color(0xFF1D8E92),
              Color(0xFF1D8E92),
              Color(0xFF1E5F6F),
              Color(0xFF1E5F6F),
            ],
            stops: [0.1, 0.4, 0.7, 0.9],
          )),
        ),
        LayoutBuilder(builder: (context, rafay) {
          return Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                  horizontal: rafay.maxWidth * 0.04,
                  vertical: rafay.maxHeight * 0.04),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SignIn',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  _layoutBuilder(rafay),
                  SizedBox(
                    height: 30.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Password',
                        style: labelStyle,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        decoration: boxDecorationStyle,
                        alignment: Alignment.bottomLeft,
                        height: 60.0,
                        child: TextField(
                          obscureText: _isHiddeen,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OpenSans',
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14.0),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            suffixIcon: IconButton(
                                icon: Icon(_isHiddeen
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    _isHiddeen = !_isHiddeen;
                                  });
                                }),
                            hintText: 'Enter Your Password',
                            hintStyle: hintTextStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () => print('Forget Button is Pressed'),
                        child: Text(
                          'Forget Password?',
                          style: labelStyle,
                        )),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Theme(
                          data: ThemeData(unselectedWidgetColor: Colors.white),
                          child: Checkbox(
                            value: false,
                            checkColor: Colors.white,
                            activeColor: Colors.black,
                            onChanged: (value) {
                              setState(() {});
                            },
                          ),
                        ),
                        Text(
                          'Remember me',
                          style: labelStyle,
                        ),
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(
                          vertical: rafay.maxHeight * 0.04),
                      width: double.infinity,
                      child: MaterialButton(
                        elevation: 5.0,
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => homescreen()));
                        },
                        padding: EdgeInsets.all(15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: Colors.white,
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Color(0xFF527DAA),
                            letterSpacing: 1.5,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                      )),
                  Column(
                    children: [
                      Text(
                        '-OR-',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: rafay.maxHeight * 0.04,
                      ),
                      Text(
                        'SignIn with',
                        style: labelStyle,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () => print('Login with Facebook'),
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0, 2),
                                  blurRadius: 6.0,
                                ),
                              ],
                              image: DecorationImage(
                                image: AssetImage("assets/logos/facebook.jpg"),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => {
                            print('Login with Google'),
                            FocusScope.of(context).requestFocus(new FocusNode())
                          },
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0, 2),
                                    blurRadius: 6.0,
                                  )
                                ],
                                image: DecorationImage(
                                  image: AssetImage("assets/logos/google.jpg"),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => signupScreen()));
                    },
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Don't have an Account?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400,
                          )),
                      TextSpan(
                          text: "SignUp",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ))
                    ])),
                  ),
                ],
              ),
            ),
          );
        }),
      ],
    )));
  }
}
