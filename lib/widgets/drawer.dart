import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

Drawer userHomeDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          margin: EdgeInsets.only(
            top: 8.0,
          ),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  'Inventory',
                  style: TextStyle(
                      color: Colors.blue, fontSize: screenWidth(context) * 0.12),
                ),
                trailing: Icon(
                  Icons.home,
                  size: screenWidth(context) * 0.12,
                  color: Colors.blue,
                ),
              ),
              Container(
                height: 8.0,
                decoration: BoxDecoration(color: Colors.grey),
              ),
            ],
          ),
        ),
        NavTile(
          icon: Icon(CupertinoIcons.book_solid),
          text: 'Catalogue',
          onTap: () {
            // Navigator.pushNamed(context, UserCatalogue.id);
          },
        ),
        NavTile(
          icon: Icon(Icons.shopping_cart),
          text: 'Purchase',
        ),
        NavTile(
          icon: Icon(Icons.account_circle),
          text: 'Profile',
        ),
        NavTile(
          icon: Icon(Icons.exit_to_app),
          text: 'Logout',
        ),
      ],
    ),
  );
}

class NavTile extends StatelessWidget {
  final String text;
  final Icon icon;
  final Function onTap;

  NavTile({this.text, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(text),
      onTap: onTap,
    );
  }
}
