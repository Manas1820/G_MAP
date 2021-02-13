import 'package:flutter/material.dart';
import 'package:hack_app/Services/gauth.dart';
import 'package:hack_app/models/custom_drawer/CustomDrawer.dart';

class GoogleOauth extends StatefulWidget {
  const GoogleOauth({
    Key key,
  }) : super(key: key);

  @override
  _GoogleOauthState createState() => _GoogleOauthState();
}

class _GoogleOauthState extends State<GoogleOauth> {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutlineButton(
          color: Colors.white,
          onPressed: () async {
            setState(() => state = true);
            await signInWithGoogle().whenComplete(() {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => CustomDrawer()));
            });
          },
          borderSide: BorderSide(
            color: Theme.of(context).backgroundColor,
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (state == false)
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16.0, top: 8, bottom: 8),
                    child: Image(
                        image: AssetImage('images/googleicon.png'), width: 24),
                  ),
                if (state == false)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "Continue with Google",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                if (state)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
        ),
      ],
    );
  }
}
