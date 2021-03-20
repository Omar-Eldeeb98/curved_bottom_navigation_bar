import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> navOptions = [
    'HOME',
    'PROFILE',
    'FAVOURITE',
    'SETTINGS',
    'GIFT'
  ];

  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.black87),
        title: Text(
          'Bottom Curved Navigation Bar',
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: Center(
          child: Text(
            navOptions[_index],
            style: TextStyle(
                color: Colors.grey[700],
                fontSize: 40.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        height: 60,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.black,
        items: [
          Icon(
            Icons.home,
            color: Colors.green,
            size: 30,
          ),
          Icon(
            Icons.person,
            color: Colors.green,
            size: 30,
          ),
          Icon(
            Icons.star_half_sharp,
            color: Colors.green,
            size: 30,
          ),
          Icon(
            Icons.settings,
            color: Colors.green,
            size: 30,
          ),
          Icon(
            Icons.wallet_giftcard,
            color: Colors.green,
            size: 30,
          ),
        ],
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
