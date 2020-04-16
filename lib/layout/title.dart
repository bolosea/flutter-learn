import 'package:flutter/material.dart';

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        padding: EdgeInsets.all(32.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text('Oeschinen Lake Campground',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Text('Kandersteg, Switzerland',
                      style: TextStyle(color: Colors.grey))
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red[500],
            ),
            Text('41')
          ],
        ));
  }
}
