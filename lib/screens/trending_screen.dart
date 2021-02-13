import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:hack_app/screens/profile_screen.dart';

class TrendingPage extends StatefulWidget {
  @override
  _TrendingPageState createState() => new _TrendingPageState();
}

class _TrendingPageState extends State<TrendingPage> with TickerProviderStateMixin {
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
                        horizontal: MediaQuery.of(context).size.width * 0.32,
                        vertical: 10.0),
                    child: Text(
                      'Trending',
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
                            SizedBox(height: 80.0),
                            Text(
                              'TOP 3',
                              style: GoogleFonts.rambla(
                                color: Colors.black,
                                fontSize: 40.0,
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
                                          padding: const EdgeInsets.only(
                                              top: 8.0, bottom: 8.0, left: 25.0),
                                          child: Text(
                                            'AAPL',
                                            style: GoogleFonts.rambla(
                                                color: Colors.black, fontSize: 20.0),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, bottom: 8.0, right: 40.0),
                                          child: Text(
                                            '273.33',
                                            style: TextStyle(
                                                color: Colors.teal[300],
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 16.0),
                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            color: Color(0xffEBF9FF),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  vertical: 4.0, horizontal: 8.0),
                                              child: Text(
                                                'view details',
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, bottom: 8.0, right: 40.0),
                                          child: Text(
                                            '-20',
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 15.0),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
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
                                          padding: const EdgeInsets.only(
                                              top: 8.0, bottom: 8.0, left: 25.0),
                                          child: Text(
                                            'MSOFT',
                                            style: GoogleFonts.rambla(
                                                color: Colors.black, fontSize: 20.0),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, bottom: 8.0, right: 40.0),
                                          child: Text(
                                            '273.33',
                                            style: TextStyle(
                                                color: Colors.teal[300],
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 16.0),
                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            color: Color(0xffEBF9FF),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  vertical: 4.0, horizontal: 8.0),
                                              child: Text(
                                                'view details',
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, bottom: 8.0, right: 40.0),
                                          child: Text(
                                            '-20',
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 15.0),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20.0),
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
                                          padding: const EdgeInsets.only(
                                              top: 8.0, bottom: 8.0, left: 25.0),
                                          child: Text(
                                            'GGL',
                                            style: GoogleFonts.rambla(
                                                color: Colors.black, fontSize: 20.0),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, bottom: 8.0, right: 40.0),
                                          child: Text(
                                            '273.33',
                                            style: TextStyle(
                                                color: Colors.teal[300],
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 16.0),
                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            color: Color(0xffEBF9FF),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  vertical: 4.0, horizontal: 8.0),
                                              child: Text(
                                                'view details',
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, bottom: 8.0, right: 40.0),
                                          child: Text(
                                            '-20',
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 15.0),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20.0),
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
