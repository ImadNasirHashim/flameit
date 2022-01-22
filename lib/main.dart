import 'package:flameit/ui/screens/custom_bottom_bar.dart';
import 'package:flameit/ui/screens/home_screen/home_screen.dart';
import 'package:flameit/ui/screens/introscreens/eachpage.dart';
import 'package:flameit/ui/screens/introscreens/indicator.dart';
import 'package:flameit/ui/screens/uthenticaiton_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'ui/screens/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.yellow,
          dividerColor: Colors.yellow
        ),

        debugShowCheckedModeBanner: false,
        title: "Flutter Demo",
        home:

        // UthenticationScreen()
         SplashScreen(),
      ),
    );
  }
}

class MyIntroScreeen extends StatefulWidget {
  @override
  _MyIntroScreeenState createState() => _MyIntroScreeenState();
}

class _MyIntroScreeenState extends State<MyIntroScreeen> {
  final controller = PageController();

  final messages = [
    "Order What Exactly You Want",
    "Explore Best Foods At Multiple Shops",
    "Customise Your Order ",
  ];
  final images = [
    'assets/logo.png',
    'assets/image1.png',
    'assets/image2.png',
  ];

  int numberOfPages = 3;
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Stack(
            children: <Widget>[
              PageView.builder(
                controller: controller,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                itemCount: numberOfPages,
                itemBuilder: (BuildContext context, int index) {
                  bool showSkip = true;
                  if (index == 2) showSkip = false;
                  return EachPage(messages[index], images[index]);
                },
              ),

              // Image.asset("assets/logo/logo.png"),

              Positioned(
                bottom: 70,
                left: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    messages[currentPage],
                    style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(
                    top: 60
                  ),
                  child: Text("Flameit Health Served With Taste",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),),
                ),
              ),

              // Positioned(
              //   bottom: 0,
              //     left: 0,
              //     right:0,
              //     top: 30,
              //     child: Text(
              //         "Skip",
              //         style: TextStyle(color: Colors.black),
              //       ),
              //     ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  // margin: EdgeInsets.only(left: 10,right: 10),
                  height: 50,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: InkWell(
                          onTap: ()
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );

                          },
                          child: Container(

                            child: Text(
                              "SKIP",
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                            ),
                            margin: EdgeInsets.only(left: 20),
                          ),
                        ),
                      ),
                      // currentPage ==0?SizedBox(
                      //   child: Text("    "),
                      // ): GestureDetector(
                      //     onTap: (){
                      //       controller.jumpToPage(currentPage-1);
                      //     },
                      //     child: Center(child: Text("Skip",style: TextStyle(fontWeight: FontWeight.bold),))),
                      Expanded(
                        child: Container(
                          child: Indicator(
                            controller: controller,
                          ),
                        ),
                      ),

                      (currentPage == numberOfPages - 1)
                          ? Expanded(
                              child: Container(
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => HomeScreen(),
                                        ),
                                      );
                                      // Navigator.push(context,
                                      //     MaterialPageRoute(builder: (context)=>
                                      //         AdminLoginPage()
                                      //       //MainBottomPage()
                                      //     ));
                                    },
                                    child: Center(
                                        child: Text(
                                      "Done",
                                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                                    ))),
                              ),
                            )
                          : Expanded(
                              child: Center(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    margin: EdgeInsets.only(right: 25),
                                    child: GestureDetector(
                                      onTap: () {
                                        controller.jumpToPage(currentPage + 1);
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(left: 25),
                                        child: Icon(Icons.arrow_forward,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
