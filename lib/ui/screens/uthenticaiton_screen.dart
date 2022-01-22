import 'package:flameit/core/constants/app_links.dart';
import 'package:flameit/widgets/large_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_screen/home_screen.dart';
import 'webview_screen/web_view_screen.dart';

class UthenticationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 123.3, left: 99.5, right: 100.5),
              child: Text(
                'The food at your doorstep',
                style: TextStyle(fontSize: 24.sp),
              ),
            ),
            SizedBox(
              height: 128.63.h,
            ),
            Container(
              width: 123.w,
              height: 116.99.h,
              child: Image.asset('assets/logo1.png'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 118.5),
              child: Text(
                'Flameit',
                style: TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 129.09.h,
            ),
            ButtonLarge(
              text: 'LOGIN',
              color: Colors.yellow.shade600,
              textColor: Colors.black,

              // color: Color(0xFDD114),
              onTap: () {
                // onTap function...
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WebViewScreen(
                      url: loginPath,
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 10.h,
            ),
            ButtonLarge(
              text: 'CREATE ACCOUNT',
              color: Colors.black,
              textColor: Colors.white,

              // color: Color(0xFDD114),
              onTap: () {
                // onTap function...
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WebViewScreen(
                      url: registrationPath,
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 10.h,
            ),
            ButtonLarge(
              text: 'I\'ll do this later',

              color: Colors.grey.shade300,

              // color: Color(0xFDD114),
              onTap: () {
                // onTap function...
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 24.h,
            )
          ],
        ),
      ),
    );
  }
}
