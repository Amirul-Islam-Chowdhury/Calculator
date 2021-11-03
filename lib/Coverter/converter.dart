import 'package:flutter/material.dart';

class Conveter extends StatefulWidget {
  @override
  _ConveterState createState() => _ConveterState();
}

class _ConveterState extends State<Conveter> {
  var input1 = 0, input2 = 0, result = 0;

  final TextEditingController t1 = TextEditingController(text: '0');
  final TextEditingController t2 = TextEditingController(text: '0');

  void doConvert() {
    setState(() {
      input1 = int.parse(t1.text);
      input2 = int.parse(t2.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(" Coverter")),
        body: Container(
          padding: EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(" Output : $result",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red)),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: 'Enter  Kilomiter '),
                controller: t1,
              ),

              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: 'Enter mumber 2'),
                controller: t2,
              ),

              // add buttom
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                      child: Text(" Convert"),
                      color: Colors.green,
                      onPressed: () {})
                ],
              )
            ],
          ),
        ));
  }
}
