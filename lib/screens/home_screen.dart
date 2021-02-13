import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

bool isDarkMode = false;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Widget> pages = <Widget>[
    Container(child: Text('hello')),
    Container(child: Text('hello')),
    Container(child: Text('hello')),
    Container(child: Text('hello')),
  ];

  @override
  void initState() {
    super.initState();
    print('callllllllllllllllleddddddddddd');
  }

  void navigate(index) async {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: pages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              backgroundColor: Colors.black54,
              icon: Icon(
                Icons.access_time,
              ),
              title: Text('Team')),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.camera_alt_outlined,
            ),
            title: Text('Scan'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.graph_circle,
            ),
            title: Text('Stocks'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_outlined,
            ),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: navigate,
      ),
    );
  }
}
