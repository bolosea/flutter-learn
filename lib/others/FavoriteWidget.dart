import "package:flutter/material.dart";

class FavoriteWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _FavoriteWidgetState();
  }
  
  
}
class _FavoriteWidgetState extends State<FavoriteWidget>{
  bool _isFavorited = false;
  int _favoritedCount = 41;

  _addFavorite(){
    setState(() {
      _isFavorited = !_isFavorited;
      _favoritedCount = _isFavorited ? _favoritedCount + 1 : _favoritedCount -1;
    });
  }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,

      body: Container(
       padding: EdgeInsets.all(100.0), 
      child: Row(children: <Widget>[
        Container(
          // color: Colors.yellow,
          child: IconButton(
            icon: _isFavorited ? Icon(Icons.star) : Icon(Icons.star_border),
            color: Colors.red,
            onPressed: _addFavorite
          )
        ),
        SizedBox(
          width: 18.0,
          child: Container(
            child: Text('$_favoritedCount')
          )
        )
      ],
    )),
    );
  }
}