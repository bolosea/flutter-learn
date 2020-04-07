

import 'package:flutter/material.dart';

class Counter extends StatefulWidget{



  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CounterState();
  }
}

class _CounterState extends State<Counter>{
  int _count = 0;

  void _add(){
    setState(() {
      _count ++;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        RaisedButton(
          onPressed: _add,
          child: Text('addd')
        ),
        Text('count: $_count')
      ]
    );
  }

}