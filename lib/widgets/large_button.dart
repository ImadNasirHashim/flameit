import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonLarge extends StatelessWidget {
  final onTap;
  final text;
  final Color? color;
  final Color? textColor;

  ButtonLarge(
      {required this.text,
      required this.onTap,
      this.color = Colors.black,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap,
      child: Container(
        height: 56,
        width: 296,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: color,
        ),
        child: Center(
          child: Text(
            '$text',
            style: TextStyle(
                fontSize: 16,
                color: textColor,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
