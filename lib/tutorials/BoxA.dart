
import 'package:flutter/material.dart';

class BoxA extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    return _BoxAState();
  }

}

class _BoxAState extends State<BoxA>{
  bool _active = false;
 
  void _handleActive(){
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleActive,
      child: Container(
        child: Center(child: Text(_active?'active':'no active',style: TextStyle(
          fontSize: 32.0,
          color: Colors.white
        ),)),
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: _active? Colors.red : Colors.grey
        ),
      )
    );
  }
  
}