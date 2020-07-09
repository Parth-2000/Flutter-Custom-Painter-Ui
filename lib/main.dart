import 'package:flutter/material.dart';
import 'package:flutter_custom_painter/ui_page1.dart';
import 'package:flutter_custom_painter/ui_page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Custom Painter UI",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Custom Painter UI",
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 100.0,
              child: FlatButton(
                color: Colors.orange,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new UIPage1()));
                },
                child: Text(
                  "Custom Painter UI 1",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100.0,
              child: FlatButton(
                color: Colors.orange,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new UIPage2()));
                },
                child: Text(
                  "Custom Painter UI 2",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
