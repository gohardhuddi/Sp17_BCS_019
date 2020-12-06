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
        centerTitle: true,
        backgroundColor: Colors.pink,
        title: Text(
          'Contact Us',
          style: TextStyle(color: Colors.white),
        ),
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
            'Khurram Shahzad',
            style: TextStyle(
                fontSize: 30.0, color: Colors.white, fontFamily: 'Pacifico'),
          ),
          SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 25,
            ),
            child: Card(
              color: Colors.white,
              elevation: 22.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Center(
                child: ListTile(
                  leading: Icon(
                    Icons.account_circle,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'SP17_BCS_019',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      color: Colors.teal[900],
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 25,
            ),
            child: Card(
              color: Colors.white,
              elevation: 22.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Center(
                child: ListTile(
                  leading: ImageIcon(
                    AssetImage("images/github.png"),
                    color: Colors.black,
                  ),
                  title: Text(
                    'https://github.com/gohardhuddi',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      color: Colors.teal[900],
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
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
              child: Text(
                'Go Home',
                style: TextStyle(color: Colors.white),
              ),
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
