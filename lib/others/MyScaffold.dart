
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget{
  
  final Widget title;
  MyAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height: 56.0,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(
        color: Colors.blue[500]
      ),
      child: new Row(
        children: <Widget>[
          new IconButton(icon: Icon(Icons.menu), onPressed: null),
          new Expanded(child: title),
          new IconButton(icon: new Icon(Icons.search), onPressed: null),
          
          
        ],
      )
    );
  }
  
}

class MyScaffold extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      child: new Column(
      children: <Widget>[
        new Expanded(child: new Center(child: new Text('hello,world'))),
        new MyAppBar(
          title: new Text(
            'example title',
            style: Theme.of(context).primaryTextTheme.title
          )
        ),
        new Expanded(child: new Center(child: new Text('hello,world')))
      ]
    ),
    );
  }
}
