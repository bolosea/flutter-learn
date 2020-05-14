import 'package:flutter/material.dart';
import 'package:flutter_learn/others/FavoriteWidget.dart';
import 'basic-widgets/_container.dart';


main(List<String> args) {
  // runApp(new MaterialApp(title: 'basic widgets', home: MyContainer()));
  runApp(MaterialApp(
    home: Container(
      // decoration: BoxDecoration(color: Colors.yellow),
      // width: 100.0,
      // height: 200.0,
      child: FavoriteWidget(),
    )
  ));

}
