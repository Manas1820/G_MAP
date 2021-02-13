import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:hack_app/screens/loginScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConnectivityAppWrapper(
        app: MaterialApp(
      // routes: {
      //   HomeScreen.id: (context) => HomeScreen(),
      //   ReceiptData.id: (context) => ReceiptData(),
      // },
      // initialRoute: HomeScreen.id,
      home: GauthPage(),
    ));
  }
}
