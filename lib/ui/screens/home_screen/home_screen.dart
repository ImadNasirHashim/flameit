import 'dart:async';
import 'package:flameit/core/constants/app_links.dart';
import 'package:flameit/ui/screens/custom_loader.dart';
import 'package:flameit/ui/screens/home_screen/home_provider.dart';
import 'package:flameit/ui/screens/side_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({ Key? key }) : super(key: key);
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  late WebViewController controllerGlobal;
  final flutterWebviewPlugin = FlutterWebviewPlugin();
  late WebViewController _webViewController;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: Consumer<HomeProvider>(
        builder: (context, model, child) => Scaffold(

          key: _scaffoldKey,
          drawer: Theme(
              data: Theme.of(context).copyWith(
                canvasColor: Colors.white, //This will change the drawer background to blue.
                //other styles
              ),
              child: SideBarScreen()),
          body: Stack(
            children: [
              WebView(
                initialUrl: homePath,

                javascriptMode: JavascriptMode.unrestricted,
                // onWebViewCreated: (WebViewController webViewController) {
                //   _controller.future.then((value) => controllerGlobal = value);
                //   _controller.complete(webViewController);
                // },
                onPageFinished: (val) {
                  print('OnFineshed Value ==> $val ');
                  model.onFineshedValue();
                  flutterWebviewPlugin.evalJavascript('alert("Hello World")');
                  // _webViewController
                  //     .evaluateJavascript("javascript:(function() { " +
                  //         "var head = document.getElementsByTagName('header')[0];" +
                  //         "head.parentNode.removeChild(head);" +
                  //         "var footer = document.getElementsByTagName('footer')[0];" +
                  //         "footer.parentNode.removeChild(footer);" +
                  //         "})()")
                  //     .then((value) =>
                  //         debugPrint('Page finished loading Javascript'))
                  //     .catchError((onError) => debugPrint('$onError'));
                  // setState(() {
                  //   isLoading = true;
                  // });
                },
              ),
              

              model.isLoading == false
                  ? CustomLoader()
                  : Container(
                        width: double.infinity,
                        height: 70.h,
                        child: InkWell(
                          onTap: ()
                          {

                          },
                          child:  Image.asset("assets/menubg.png",
                            fit: BoxFit.cover,

                          ),

                          // Container(
                          //   width: 50,
                          //   child:IconButton(
                          //     alignment: Alignment.centerLeft,
                          //     onPressed: () {
                          //       _scaffoldKey.currentState!.openDrawer();
                          //     },
                          //     icon: Icon(
                          //       Icons.menu,
                          //       color: Colors.white,
                          //     ),
                          //   ),
                          // ),
                        )




                      ),


              Container(
                margin: EdgeInsets.only(top: 30,left: 20),
                width: 50,
                child:IconButton(
                  alignment: Alignment.centerLeft,
                  onPressed: () {
                    _scaffoldKey.currentState!.openDrawer();
                  },
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
              )
              
              
            ],
          ),
        ),
      ),
    );
  }
}
