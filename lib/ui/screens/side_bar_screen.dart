import 'package:flameit/core/constants/app_links.dart';
import 'package:flameit/ui/screens/webview_screen/web_view_screen.dart';
import 'package:flutter/material.dart';

class SideBarScreen extends StatelessWidget {
  // const SideBarScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('Home'),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WebViewScreen(
                            url: foodPath,
                          )));
            },
            title: Text('Food'),
          ),
          ListTile(
            title: Text('Restaurants'),
          ),
          ListTile(
            title: Text('Become an ambassadar'),
          ),
          ListTile(
            title: Text('Become an Restaurant'),
          ),
          ListTile(
            title: Text('Cart'),
          ),
          ListTile(
            title: Text('Login'),
          ),
          ListTile(
            title: Text('Registration'),
          ),
          ListTile(
            title: Text('Rider Login'),
          ),
        ],
      ),
    );
  }
}
