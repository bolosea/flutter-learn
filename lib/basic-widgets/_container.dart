import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      // child: Text('吃饭睡觉打豆豆!'),
      color: Colors.blue,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(0),
      width: 150,
      height: 150,
    ));
  }
}
