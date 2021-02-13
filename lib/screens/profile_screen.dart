import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:hack_app/screens/trending_screen.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => new _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 8.0, top: 8.0),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    'images/icon.png',
                    scale: 8.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 60.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.black26, Color(0xff4CA0E0)]),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Balance',
                            style: GoogleFonts.rambla(
                                color: Colors.white, fontSize: 25.0),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10.0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Colors.black26, Color(0xff4CA0E0)]),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'INR 20,000',
                                style: GoogleFonts.rambla(
                                    color: Colors.white, fontSize: 25.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.35,
                        vertical: 10.0),
                    child: Text(
                      'Profile',
                      style: GoogleFonts.rambla(
                        fontSize: 30.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white),
                        child: Column(
                          children: [
                            SizedBox(height: 60.0),
                            Material(
                              elevation: 10.0,
                              borderRadius: BorderRadius.circular(40.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.black54,
                                radius: 40.0,
                                backgroundImage: AssetImage('images/avatar.png'),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25.0),
                              child: Material(
                                elevation: 15.0,
                                borderRadius: BorderRadius.circular(10.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Name',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 15.0),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Pisa Noyak',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 15.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Email',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 15.0),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'pisanoyak@gmail.com',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 15.0),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25.0),
                              child: Material(
                                elevation: 15.0,
                                borderRadius: BorderRadius.circular(10.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'User ID',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 15.0),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            '1029-1736-1273',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 15.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Phone',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 15.0),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            '+91 9999999999',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 15.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Gender',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 15.0),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Female',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 15.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25.0),
                              child: Material(
                                elevation: 15.0,
                                borderRadius: BorderRadius.circular(10.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Name',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 15.0),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Pisa Noyak',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 15.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Email',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 15.0),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'pisanoyak@gmail.com',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 15.0),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Material(
                              elevation: 10.0,
                              borderRadius: BorderRadius.circular(10.0),
                              child: Row(
                                children: [
                                  FlatButton(
                                    onPressed: () {
                                      setState(() {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => TrendingPage()),
                                        );
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'images/left.png',
                                        scale: 2.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 30.0),
                                  FlatButton(
                                    onPressed: () {
                                      setState(() {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => ProfilePage()),
                                        );
                                      });
                                    },
                                    child: Image.asset(
                                      'images/right.png',
                                      scale: 2.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
