import 'package:flutter/material.dart';
import 'package:hack_app/models/custom_drawer/CustomDrawer.dart';

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
