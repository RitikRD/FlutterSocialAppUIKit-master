import 'dart:async';

import 'package:flutter/material.dart';
import 'package:social_app_ui/screens/home.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 7),
        () => Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return Home();
            })));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
      alignment: Alignment.topCenter,
      color: Colors.white,
      child: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
              bottomLeft: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
            )),
            child: new Image(
              image: new AssetImage("assets/social gif.gif"),
              fit: BoxFit.fitWidth,
              colorBlendMode: BlendMode.darken,
            ),
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Icon(
                Icons.chat,
                color: Colors.blue[800],
                size: 75.0,
              ),
              Text(
                "Connected Creativity... ",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
              CircularProgressIndicator(
                backgroundColor: Colors.blue[800],
              ),
              SizedBox(height: 20.0),
            ],
          )
        ],
      ),
    ));
  }
}
