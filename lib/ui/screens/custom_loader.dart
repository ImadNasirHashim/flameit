import 'package:flutter/material.dart';

class CustomLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        valueColor:AlwaysStoppedAnimation<Color>(Color(0xfffcd212)),
      ),
    );
  }
}
