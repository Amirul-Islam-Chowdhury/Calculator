import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0, sqoure = 0;
  final TextEditingController t1 = TextEditingController(text: '0');
  final TextEditingController t2 = TextEditingController(text: '0');
  //addition
  void DoAdditon() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  // subbtraction
  void DoSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }
  // Multification

  void DoMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }
  // divition

  void DoDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  //power
  void doPower() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    sqoure = (num1 * num1) + (num2 * num2);
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
            Text(" Output : $sum",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red)),
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
                  color: Colors.greenAccent,
                  onPressed: DoAdditon,
                ),
                MaterialButton(
                  child: Text('-'),
                  color: Colors.greenAccent,
                  onPressed: DoSub,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text('*'),
                  color: Colors.greenAccent,
                  onPressed: DoMul,
                ),
                MaterialButton(
                  child: Text('/'),
                  color: Colors.greenAccent,
                  onPressed: DoSub,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text(" Clear "),
                  color: Colors.greenAccent,
                  onPressed: doClear,
                ),
                MaterialButton(
                  child: Text(" ^ "),
                  color: Colors.greenAccent,
                  onPressed: doPower,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
