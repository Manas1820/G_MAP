import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:hack_app/Services/gauthButton.dart';
import 'package:flutter/material.dart';
import 'package:connectivity_wrapper/connectivity_wrapper.dart';

class GauthPage extends StatefulWidget {
  @override
  _GauthPageState createState() => _GauthPageState();
}

class _GauthPageState extends State<GauthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConnectivityWidgetWrapper(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50.0, vertical: 20.0),
                  child: Image(
                    image: AssetImage('images/bill.png'),
                  ),
                  //TODO: ADD A IMAGE HERE
                ),
                /*Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      print("going to " + "/login");
                      Navigator.pushReplacementNamed(context, "/login");
                    },
                    child: Container(
                      height: 55,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(800),
                          boxShadow: [
                            BoxShadow(
                                color:
                                    Theme.of(context).primaryColor.withOpacity(.4),
                                blurRadius: 6,
                                offset: Offset(0, 5))
                          ]),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
                Button(
                  myText: "SignUp",
                  myColor: Theme.of(context).accentColor,
                  routeName: "/signup",
                ),
                DividingOr(),*/
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: GoogleOauth(),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'By continuing you agree to our ',
                      style: Theme.of(context).textTheme.bodyText1,
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColor),
                            recognizer: TapGestureRecognizer()..onTap = () {}),
                        TextSpan(text: ' and '),
                        TextSpan(
                          text: 'Terms & Conditions',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
