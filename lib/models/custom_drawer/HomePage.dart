import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:hack_app/Utils/SharedPreferences.dart';
import 'package:matrix4_transform/matrix4_transform.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  double xoffSet = 0;
  double yoffSet = 0;
  double angle = 0;

  bool isOpen = false;
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnimatedContainer(
        transform: Matrix4Transform()
            .translate(x: xoffSet, y: yoffSet)
            .rotate(angle)
            .matrix4,
        duration: Duration(milliseconds: 250),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: isOpen
                  ? BorderRadius.circular(40)
                  : BorderRadius.circular(0)),
          child: Stack(
            children: [
              Image.asset('images/card.png'),
              Padding(
                padding: EdgeInsets.only(left: 8.0, top: 16.0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          !isOpen
                              ? IconButton(
                                  icon: Icon(
                                    Icons.menu_rounded,
                                    color: Colors.white,
                                    size: 40.0,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      xoffSet = 150;
                                      yoffSet = 80;
                                      angle = -0.2;
                                      isOpen = true;
                                    });
                                  })
                              : IconButton(
                                  icon: Icon(Icons.arrow_back_ios,
                                      color: Colors.white),
                                  onPressed: () {
                                    if (isOpen == true) {
                                      setState(() {
                                        xoffSet = 0;
                                        yoffSet = 0;
                                        angle = 0;
                                        isOpen = false;
                                      });
                                    }
                                  }),
                          Image.asset(
                            'images/icon.png',
                            scale: 6.0,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.0, right: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Welcome,\n' +
                                    Constants.prefs.getString('username'),
                                style: GoogleFonts.rambla(
                                    color: Colors.white, fontSize: 40.0),
                              ),
                            ),
                            CircleAvatar(
                              radius: 40.0,
                              backgroundImage: NetworkImage(
                                  Constants.prefs.getString('profileImage')),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 80.0),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 60.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.black26, Color(0xff4CA0E0)]),
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Collect your\n bills and track\nyour expenses',
                            style: GoogleFonts.rambla(
                                color: Colors.white, fontSize: 30.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
