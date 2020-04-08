
import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget{


  CounterDisplay({this.count});
  int count;
 

  @override
  Widget build(BuildContext context) {
    return Text('count: $count');
  }
}

class CounterAdd extends StatelessWidget{

  CounterAdd({this.add});
  VoidCallback add;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(onPressed: add,child: Text('addd pro'));
  }
}

class CounterPro extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CounterState();
  }
  
}

class _CounterState extends State<CounterPro>{

  int _count = 0;
  void add(){
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        CounterAdd(add: add),
        CounterDisplay(count: _count)
      ]
    );
  }
  
}