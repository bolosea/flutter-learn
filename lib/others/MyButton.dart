
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: (){
        print("mybutton was tapped!");
      },
      child: new Container(
        height: 12.0,
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.symmetric(horizontal: 28.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500]
        ),
        child: Center(child: Text('aa'),)
      )
    );
  }
}