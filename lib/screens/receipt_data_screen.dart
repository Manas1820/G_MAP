import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:flutter/material.dart';
import 'package:hack_app/Utils/Parsing.dart';
import 'package:hack_app/Utils/SharedPreferences.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ReceiptData extends StatefulWidget {
  static const String id = 'receipt_data';
  @override
  _ReceiptDataState createState() => _ReceiptDataState();
}

class _ReceiptDataState extends State<ReceiptData> {
  File pickedImage;
  var text = '';
  var receiptInfo;
  bool receiptReady = false;
  bool imageLoaded = false;

  Future pickImage() async {
    var awaitImage = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      pickedImage = awaitImage;
      imageLoaded = true;
    });
    FirebaseVisionImage visionImage = FirebaseVisionImage.fromFile(pickedImage);
    TextRecognizer textRecognizer = FirebaseVision.instance.textRecognizer();
    VisionText visionText = await textRecognizer.processImage(visionImage);
    await getReceiptInfo(visionText);
    textRecognizer.close();
  }

  Future getReceiptInfo(visionText) async {
    var text = ConfirmHelper.getText(visionText);
    var info = ConfirmHelper.getItems(text);

    setState(() {
      receiptInfo = info;
      receiptReady = true;
    });
    // return;
  }

  sendDataToFirebase(num total) async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(Constants.prefs.getString('userId'))
        .collection('bills')
        .doc()
        .set({
      'dateTime': DateTime.now(),
      'total': total,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 100.0),
          imageLoaded
              ? Center(
                  child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(blurRadius: 20),
                    ],
                  ),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                  height: 250,
                  child: Image.file(
                    pickedImage,
                    fit: BoxFit.cover,
                  ),
                ))
              : Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(blurRadius: 20),
                    ],
                  ),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                  height: 250,
                  child: Center(
                    child: Text(
                      "Upload a Image",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  )),
          SizedBox(height: 10.0),
          SizedBox(height: 10.0),
          FlatButton(
            child: Text('Confirm'),
            onPressed: () async {
              await sendDataToFirebase(receiptInfo.finalTotal);
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.photo_camera,
          size: 40,
        ),
        onPressed: () async {
          await pickImage();
        },
      ),
    );
  }
}
