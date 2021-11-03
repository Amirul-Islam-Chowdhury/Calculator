import 'dart:math';

import 'package:flutter/material.dart';
import 'package:powers/powers.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  double num1 = 0, num2 = 0, sum = 0;
  double square = 0;
  final TextEditingController t1 = TextEditingController(text: '');
  final TextEditingController t2 = TextEditingController(text: '');
  //addition
  void DoAdditon() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 + num2;
    });
  }

  // subbtraction
  void DoSub() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 - num2;
    });
  }
  // Multification

  void DoMul() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 * num2;
    });
  }
  // divition

  void DoDiv() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = (num1 ~/ num2) as double;
    });
  }

  //power
  void doPower() {
    setState(() {
      num1 = double.parse(t1.text);

      sum = pow(num1, 2) as double;
    });
  }

  //Clear
  void doClear() {
    setState(() {
      num1 = 0;
      num2 = 0;
      sum = 0;
      t1.text = "";
      t2.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Scaffold(
      appBar: AppBar(
        title: Text(" Calculator "),
      ),
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(" Result : $sum ",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent)),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: 'Enter mumber 1'),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: 'Enter mumber 2'),
              controller: t2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text('+'),
                  color: Colors.deepOrangeAccent,
                  onPressed: DoAdditon,
                ),
                MaterialButton(
                  child: Text('-'),
                  color: Colors.deepOrangeAccent,
                  onPressed: DoSub,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text('*'),
                  color: Colors.deepOrangeAccent,
                  onPressed: DoMul,
                ),
                MaterialButton(
                  child: Text('/'),
                  color: Colors.deepOrangeAccent,
                  onPressed: DoSub,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text(" Clear "),
                  color: Colors.deepOrangeAccent,
                  onPressed: doClear,
                ),
                MaterialButton(
                  child: Text(" ^ "),
                  color: Colors.deepOrangeAccent,
                  onPressed: doPower,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  child: Text(" GO TO CONVERTER"),
                  color: Colors.deepOrange.shade100,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/convert');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
