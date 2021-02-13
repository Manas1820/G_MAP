import 'dart:io';
import 'package:flutter/material.dart';
import 'file:///C:/Users/apoor/AndroidStudioProjects/G_MAP/lib/models/custom_drawer/CustomDrawer.dart';
import 'package:hack_app/screens/receipt_data_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_ml_vision/firebase_ml_vision.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {
      //   HomeScreen.id: (context) => HomeScreen(),
      //   ReceiptData.id: (context) => ReceiptData(),
      // },
      // initialRoute: HomeScreen.id,
      home: CustomDrawer(),
    );
  }
}
