import 'package:flutter/material.dart';

class TutorialHome extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: null),
        title: Text('测试'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'search',
          )
        ],
      ),
      body: Center(child:Text('hello world')),
      floatingActionButton: FloatingActionButton(
        tooltip: 'add',
        child: new Icon(Icons.add)
      )
    );
  }
}
