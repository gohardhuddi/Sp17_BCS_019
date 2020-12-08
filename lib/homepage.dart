import 'dart:io';

import 'package:dice_roler_master/hard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'simplemode.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent[700],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300.0,
                  child: RawMaterialButton(
                    fillColor: Colors.pink,
                    splashColor: Colors.red,
                    elevation: 15.0,
                    shape: const StadiumBorder(),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Dicepage()),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 10.0),
                      child: Text(
                        " Simple Mode ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  width: 300.0,
                  child: RawMaterialButton(
                    fillColor: Colors.pink,
                    splashColor: Colors.red,
                    elevation: 15.0,
                    shape: const StadiumBorder(),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => hard()),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 10.0),
                      child: Text(
                        " Hard Mode ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  width: 300.0,
                  child: RawMaterialButton(
                    fillColor: Colors.pink,
                    splashColor: Colors.red,
                    elevation: 15.0,
                    shape: const StadiumBorder(),
                    onPressed: () {
                      exit(0);
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 10.0),
                      child: Text(
                        " Exit ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
