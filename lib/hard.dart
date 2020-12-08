import 'package:dice_roler_master/homepage.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:io';
import 'dart:async';
import 'options_guss.dart';
import 'mainDrawer.dart';

guss correct = guss();

class hard extends StatefulWidget {
  @override
  _hardState createState() => _hardState();
}

class _hardState extends State<hard> {
  int rold = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hard Level"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      backgroundColor: Colors.redAccent[700],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(),
              height: 200,
              width: 200,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    rold = Random().nextInt(5) + 1;
                    correct.get_correct(rold);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => guss()));
                  });
                },
                child: Image(image: AssetImage('images/dice$rold.png')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
