import 'package:flameit/core/constants/app_links.dart';
import 'package:flameit/ui/screens/webview_screen/web_view_screen.dart';
import 'package:flutter/material.dart';

class SideBarScreen extends StatelessWidget {
  // const SideBarScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Drawer(

        child: Container(
          // color: Color(0xff1c242d),
          child: ListView(
            children: [
              new Container(
                child: new DrawerHeader(
                  child: new Image.asset("assets/logo2.png")),
                color: Color(0xff1c242d),
              ),


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
                      ),
                    ),
                  );
                },
                title: Text('Food'),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WebViewScreen(
                        url: restaurantPath,
                      ),
                    ),
                  );
                },
                title: Text('Restaurants'),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WebViewScreen(
                        url: becomeAmbassadar,
                      ),
                    ),
                  );
                },
                title: Text('Become an ambassadar'),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WebViewScreen(
                        url: becomeRestaurant,
                      ),
                    ),
                  );
                },
                title: Text('Become an Restaurant'),
              ),
              ListTile(
                title: Text('Cart'),
              ),

              new Divider(
                color: Colors.yellow,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WebViewScreen(
                        url: loginPath,
                      ),
                    ),
                  );
                },
                title: Text('Login'),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WebViewScreen(
                        url: registrationPath,
                      ),
                    ),
                  );
                },
                title: Text('Registration'),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WebViewScreen(
                        url: riderLogin,
                      ),
                    ),
                  );
                },
                title: Text('Rider Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
