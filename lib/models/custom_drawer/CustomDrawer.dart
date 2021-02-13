import 'package:hack_app/models/custom_drawer/FirstLayer.dart';
import 'package:hack_app/models/custom_drawer/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:hack_app/models/custom_drawer/ThirdLayer.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FirstLayer(),
          ThirdLayer(),
          HomePage(),
        ],
      ),
    );
  }
}
