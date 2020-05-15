
import 'package:flutter/material.dart';


class BoxBParent extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BoxBParentState();
  }
}
class _BoxBParentState extends State<BoxBParent>{
  bool _active = false;

  void _toggleChange(newVal){
    setState(() {
      _active = newVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: BoxB(
        active: _active,
        onChange: _toggleChange,
      ),
    );
  }
}

class BoxB extends StatelessWidget{

  bool active;
  ValueChanged onChange;

  BoxB({Key key,this.active: false, @required this.onChange});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>onChange(!active),
      child: Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: active ? Colors.red: Colors.green
        ),
        child: Center(child: Text(active?'active':'no active',style: TextStyle(fontSize: 32.0,color: Colors.white)),),
      ),
    );
  }
}