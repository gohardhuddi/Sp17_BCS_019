import 'package:dice_roler_master/homepage.dart';

import 'main.dart';
import 'mainDrawer.dart';
import 'package:flutter/material.dart';
import 'mainDrawer.dart';

void main() => runApp(MyContact());

class MyContact extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Abous us',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent[700],
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          'Contact Us',
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 80.0,
            backgroundImage: AssetImage('images/profileimage.jpg'),
          ),
          Text(
            'This is Khurram Shahzad',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.white),
          ),
          SizedBox(height: 30.0),
          Text(
            "Roll# : SP17-BCS-019",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.white),
          ),
          SizedBox(height: 30.0),
          Center(
            child: Text(
              "I am a Flutter developer. Contact us for app development.",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          SizedBox(height: 40.0),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: RaisedButton(
              color: Colors.pink,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => homepage()),
                );
              },
              child: Text('Go Home'),
            ),
          ),
        ],
      ),
    );
  }

  // void HomeScreen() {
  //   setState(() {
  //     Navigator.push(context, MaterialPageRoute(builder: (context) => MyLevel()));
  //   });
  // }
}
