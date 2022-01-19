import 'package:flameit/ui/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  // const CustomBottomBar({ Key? key }) : super(key: key);
  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: index == 0 ? HomeScreen() : Container(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("")),
        ],
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
      ),
    );
  }
}
