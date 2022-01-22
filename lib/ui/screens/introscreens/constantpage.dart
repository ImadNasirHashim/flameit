

import 'package:flutter/material.dart';

class SubMainPage extends StatefulWidget {

  String title;
  SubMainPage(this.title);


  @override
  _SubMainPageState createState() => _SubMainPageState();
}

class _SubMainPageState extends State<SubMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xffedddd1), Color(0xffc6c9c9)],
            )),
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Column(

            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // SvgPicture.asset("assets/icons/backbtn.svg"),
                  SizedBox(
                    width: 15,
                  ),
                  Text(widget.title)
                ],
              ),
              Stack(
                children: [

                  Center(child: Image.asset("assets/images/constantimg.png")),
                  Positioned(
                    left: 70,
                    top: 10,
                    child: Text("For "+widget.title),
                  ),


                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
