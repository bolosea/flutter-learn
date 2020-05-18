import 'dart:convert';
import 'dart:io';

import "package:flutter/material.dart";

class Demo extends StatelessWidget {
  Demo({Key key}) : super(key: key);

  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("demo"),leading: IconButton(icon: Icon(Icons.access_alarm), onPressed: () {},),),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            child: Container(
              height: 100,
              color: Colors.red,
              child: Text("go r1"),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/r1");
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            child: Container(
              height: 100,
              color: Colors.blue,
              child: Text("go r2"),
            ),
            onTap: () {
              print('tap r2');
              Navigator.pushNamed(context, "/r2");
            },
          ),
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(top: 10.0),
              height: 100,
              color: Colors.blue,
              child: RaisedButton(
                onPressed: () async {
                  final url = Uri.https('httpbin.org', 'ip');
                  final httpClient = HttpClient();
                  // print('ip2:');
                  var request = await httpClient.getUrl(url);
                  var resp = await request.close();
                  var respBody = await resp.transform(utf8.decoder).join();
                  print(respBody);
                  print('ip3:');
                },
                child: Text("获取ip。。"),
              ),
            ),
          ),
          //textField
          Container(
            height: 240,
            color: Colors.pink[300],
            child: Column(
              children: <Widget>[
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    hintText: "请输入账号。。"
                  ),
                ),
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    hintText: "请输入密码。。"
                  ),
                ),
                RaisedButton(onPressed: (){
                  print(_nameController.text);
                },child: Text('提交'),)
              ],
            ),
          )

        ],
      ),
    );
  }
}

class R1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(child: Text("r1"), color: Colors.yellow);
  }
}

class R2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(child: Text("r2"), color: Colors.green);
  }
}
