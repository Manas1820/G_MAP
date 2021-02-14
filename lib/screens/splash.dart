import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hack_app/Utils/SharedPreferences.dart';
import 'package:hack_app/models/custom_drawer/CustomDrawer.dart';
import 'package:hack_app/screens/loginScreen.dart';
import 'package:hack_app/screens/onbordingScreen.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  // Timer to change the screen in 2.2 seconds

  String _userId = Constants.prefs.getString('userId');
  String _firsttime = Constants.prefs.getString('firsttime');
  startTimeout() {
    return Timer(Duration(milliseconds: 2200), handleTimeout);
  }

  void handleTimeout() {
    changeScreen();
  }

  changeScreen() async {
    _firsttime == null
        ? Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => OnBoardingPage()))
        : _userId == null
            ? Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => GauthPage()))
            : Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => CustomDrawer()));
  }

  @override
  void initState() {
    startTimeout();
    super.initState();
    Firebase.initializeApp().whenComplete(() {
      print("firbase initialized in splash screen");
      setState(() {});
      startTimeout();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Opacity(
                opacity: 0.85,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                  child: Image(
                    image: AssetImage('images/icon.png'),
                    width: 150,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 170,
            ),
            Text(
              "Riyo",
              style: TextStyle(
                color: Theme.of(context).backgroundColor.withOpacity(0.25),
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
