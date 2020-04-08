import 'package:flutter/material.dart';
import 'package:flutter_learn/ShoppingList.dart';
import 'Counter.dart';
import 'CounterPro.dart';
import 'MyButton.dart';
import 'MyScaffold.dart';
import 'TutorialHome.dart';

void main() => runApp(
 new MaterialApp(
   title: 'myapp',
   home: ShoppingList(
     products: <Product>[
       new Product(name: '菠萝'),
       new Product(name: '西瓜'),
       new Product(name: '椰子'),

     ],
   )
 )
);


