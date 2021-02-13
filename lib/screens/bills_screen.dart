import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class BillsPage extends StatefulWidget {
  @override
  _BillsPageState createState() => new _BillsPageState();
}

class _BillsPageState extends State<BillsPage> with TickerProviderStateMixin {
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
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    'images/icon.png',
                    scale: 8.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
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
                            'Monthy Balance',
                            style: GoogleFonts.rambla(
                                color: Colors.white, fontSize: 25.0),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10.0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Colors.black26,
                                  Color(0xff4CA0E0)
                                ]),
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
                        horizontal: MediaQuery.of(context).size.width * 0.41,
                        vertical: 10.0),
                    child: Text(
                      'Bills',
                      style: GoogleFonts.rambla(
                        fontSize: 30.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white),
                    child: Column(
                      children: [
                        SizedBox(height: 20.0),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 60.0),
                          child: Material(
                            elevation: 15.0,
                            borderRadius: BorderRadius.circular(20.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 6.0, horizontal: 40.0),
                                  child: Text(
                                    'Date:\t02-02-2021',
                                    style: GoogleFonts.rambla(
                                        color: Colors.black, fontSize: 20.0),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 8.0, left: 40.0, right: 40.0),
                                  child: Text(
                                    'Cost:\t₹ 200',
                                    style: GoogleFonts.rambla(
                                        color: Colors.black, fontSize: 20.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 60.0),
                          child: Material(
                            elevation: 15.0,
                            borderRadius: BorderRadius.circular(20.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 6.0, horizontal: 40.0),
                                  child: Text(
                                    'Date:\t02-02-2021',
                                    style: GoogleFonts.rambla(
                                        color: Colors.black, fontSize: 20.0),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 8.0, left: 40.0, right: 40.0),
                                  child: Text(
                                    'Cost:\t₹ 200',
                                    style: GoogleFonts.rambla(
                                        color: Colors.black, fontSize: 20.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 60.0),
                          child: Material(
                            elevation: 15.0,
                            borderRadius: BorderRadius.circular(20.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 6.0, horizontal: 40.0),
                                  child: Text(
                                    'Date:\t02-02-2021',
                                    style: GoogleFonts.rambla(
                                        color: Colors.black, fontSize: 20.0),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 8.0, left: 40.0, right: 40.0),
                                  child: Text(
                                    'Cost:\t₹ 200',
                                    style: GoogleFonts.rambla(
                                        color: Colors.black, fontSize: 20.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 60.0),
                          child: Material(
                            elevation: 15.0,
                            borderRadius: BorderRadius.circular(20.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 6.0, horizontal: 40.0),
                                  child: Text(
                                    'Date:\t02-02-2021',
                                    style: GoogleFonts.rambla(
                                        color: Colors.black, fontSize: 20.0),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 8.0, left: 40.0, right: 40.0),
                                  child: Text(
                                    'Cost:\t₹ 200',
                                    style: GoogleFonts.rambla(
                                        color: Colors.black, fontSize: 20.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                      ],
                    ),
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
