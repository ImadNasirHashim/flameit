




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Indicator extends AnimatedWidget {

  final PageController controller;
  const Indicator({required this.controller}) : super(listenable: controller);
  @override
  Widget build(BuildContext context) {

    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 50,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return _createIndicator(index);
              })],
        ),
      ),
    );
  }
  Widget _createIndicator(index) {
    double w=10;
    double h=10;
    MaterialColor color=Colors.yellow;

    if(controller.page==index)
    {

      h=13;
      w=13;
    }

    return Container(
      margin: EdgeInsets.only(left: 5,right: 5),
      height: 8,
      width: 8,
      decoration: new BoxDecoration(
        color:controller.page==index? Colors.grey:Colors.yellow,
        shape: BoxShape.circle,
      ),

    );
  }
}

