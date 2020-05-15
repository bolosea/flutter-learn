import "package:flutter/material.dart";

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: ListView(
      children: <Widget>[
        Container(
          child: Center(
            child: Text('Lorem ipsum',
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Georgia')),
          ),
          width: 320.0,
          height: 240.0,
          color: Colors.grey[300],
        ),
        Container(
            child: Stack(
              children: <Widget>[
                Positioned(
                  child: Container(
                    child: Text('Lorem ipsum2'),
                    color: Colors.red[400],
                    padding: EdgeInsets.all(16.0),
                  ),
                  left: 24,
                  top: 24,
                )
              ],
            ),
            width: 320,
            height: 240,
            color: Colors.yellow[300]),

        //旋转
        Container(
            child: Transform(
              transform: Matrix4.identity()..rotateZ(15 * 3.14 / 180),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 160,
                  height: 120,
                  child: Text(
                    'Lorem ipsum',
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(color: Colors.pink[400]),
                  padding: EdgeInsets.all(16.0),
                ),
              ),
              alignment: Alignment.center,
            ),
            width: 320,
            height: 240,
            color: Colors.blue[600]),
        //圆角
        Container(
          height: 240,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(18.0)),
              color: Colors.purple),
        ),
        //圆
        Container(
          child: Center(
            child: Container(
              child: Text(
                'lalala',
                textAlign: TextAlign.center,
              ),
              width: 100,
              height: 100,
              padding: EdgeInsets.all(16),
              decoration:
                  BoxDecoration(color: Colors.red[400], shape: BoxShape.circle),
            ),
          ),
          height: 240,
          color: Colors.grey[300],
        ),
        //richText
        Container(
          height: 240,
          color: Colors.grey[400],
          child: Center(
              child: Container(
                  child: Column(
            children: <Widget>[
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(text: 'aaa'),
                TextSpan(
                    text:
                        'dasdadadasdadadadaa',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic,
                        fontSize: 48.0,
                        color: Colors.green)),
              ])),
              Text('大家打开的集卡很大很大dadadasdasdasdsadadaadasdadsadasdadada',maxLines: 1, overflow: TextOverflow.ellipsis,style: TextStyle(decoration: TextDecoration.underline),)
            ],
          ))),
        )
      ],
    ));
  }
}
