import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:hack_app/constants.dart';

import 'package:hack_app/screens/bills_screen.dart';
import 'package:hack_app/screens/profile_screen.dart';
import 'package:hack_app/screens/trending_screen.dart';


class ThirdLayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 70.0),
                    Row(
                      children: [
                        SizedBox(width: 30.0),
                        Text(
                          "RI",
                          style: TextStyle(
                              fontSize: 40,
                              color: Color(0xffC93DBD),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "YO",
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            InkWell(
                // onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => HomePage()),
                //   );
                // },
                child: Text("Home", style: kScreenOptionTextStyle)),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                },
                child: Text("Profile", style: kScreenOptionTextStyle)),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TrendingPage()),
                  );
                },
                child: Text("Trending", style: kScreenOptionTextStyle)),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BillsPage()),
                  );
                },
                child: Text("Bills", style: kScreenOptionTextStyle)),
            SizedBox(height: 150.0)
          ],
        ),
      ),
    );
  }
}
