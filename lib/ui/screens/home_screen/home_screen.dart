import 'dart:async';
import 'package:flameit/core/constants/app_links.dart';
import 'package:flameit/ui/screens/custom_loader.dart';
import 'package:flameit/ui/screens/home_screen/home_provider.dart';
import 'package:flameit/ui/screens/side_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
          drawer: SideBarScreen(),
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
                  : Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: IconButton(
                        onPressed: () {
                          _scaffoldKey.currentState!.openDrawer();
                        },
                        icon: Icon(
                          Icons.account_circle_rounded,
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
