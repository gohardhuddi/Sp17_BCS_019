import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'main.dart';
import 'homepage.dart';
import 'mainDrawer.dart';

int correct = 1;
int right = 0;
int wrong = 0;
int count = 1;

class guss extends StatefulWidget {
  void get_correct(int a) {
    correct = a;
  }

  @override
  _gussState createState() => _gussState();
}

class _gussState extends State<guss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About US"),
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      backgroundColor: Colors.redAccent[700],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(21, 50, 21, 50),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Text(
                'Guess Image ',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(
                  child: setimage(1),
                  onPressed: () {
                    showAlertDialog(context, 1);
                  },
                ),
                FlatButton(
                  child: setimage(2),
                  onPressed: () {
                    showAlertDialog(context, 2);
                  },
                ),
                FlatButton(
                  child: setimage(3),
                  onPressed: () {
                    showAlertDialog(context, 3);
                  },
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(
                  child: setimage(4),
                  onPressed: () {
                    showAlertDialog(context, 4);
                  },
                ),
                FlatButton(
                  child: setimage(5),
                  onPressed: () {
                    showAlertDialog(context, 5);
                  },
                ),
                FlatButton(
                  child: setimage(6),
                  onPressed: () {
                    showAlertDialog(context, 6);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context, int a) {
    if (count >= 5) {
      if (right > wrong) {
        AlertDialog alert = AlertDialog(
          title: Text(
            " Congratulation You Are the Winer ",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        );

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          },
        );
      } else {
        AlertDialog alert = AlertDialog(
          title: Text(
            " You Loss ",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        );

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          },
        );
      }
      setState(() {
        count = 1;
        right = 0;
        wrong = 0;
        Timer(
            Duration(seconds: 1),
            () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => homepage())));
      });
    } else {
      count++;
      if (correct == a) {
        right++;
        AlertDialog alert = AlertDialog(
          title: Text(
            "Congratulation you pickup the right Dice",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        );

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          },
        );
        setState(() {
          Timer(
              Duration(seconds: 1),
              () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => homepage())));
        });
      } else {
        wrong++;
        AlertDialog alert = AlertDialog(
          title: Text(
            " You pickup the Wrong Dice     Right IS $correct",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        );

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          },
        );
        setState(() {
          Timer(
              Duration(seconds: 1),
              () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => homepage())));
        });
      }
    }
  }

  Widget setimage(int d) {
    return Image(
      height: 60,
      width: 60,
      image: AssetImage('images/dice$d.png'),
    );
  }
}
