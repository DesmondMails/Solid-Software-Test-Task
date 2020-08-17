
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'second.dart';

void main(){
  runApp(new MaterialApp(
    title: "Test task",
    debugShowCheckedModeBanner: false,
    home: new MyWidget(),
  ),
  );
}



class MyWidget extends StatefulWidget {
  @override
  MyWidgetState createState() => MyWidgetState();
}

class MyWidgetState extends State<MyWidget> {
  Color color;

  @override
  void initState() {
    super.initState();

    color = Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Test Application"),
        ),
        body:myLayoutWidget(),
      ),
      );
  }

  Widget myLayoutWidget() {
      return new GestureDetector(
        child: new Container(
        child: new Center(
          child: new RaisedButton(
            onPressed: () {
              Navigator.push(context,
                 new MaterialPageRoute(builder: (context) => SecondScreen()));
            },
          child: new Text('Hey There',
            style: new TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 32,
            ),
          ),
//        ),
        ),
        ),
          color: color,
      ),
        onTap: changeOfColor
        );
  }
  void changeOfColor() {
    setState(() {
      color = new Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    });
  }
}


