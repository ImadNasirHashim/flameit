


import 'package:flutter/material.dart';


class EachPage extends StatefulWidget {

    final String message;
  final String image;

  EachPage(this.message, this.image);




  @override
  _EachPageState createState() => _EachPageState();
}

class _EachPageState extends State<EachPage> {



  late Image myImage;

  @override
  void initState() {
    super.initState();
    myImage= Image.asset(widget.image,
      fit: BoxFit.cover,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(myImage.image, context);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                   height: MediaQuery.of(context).size.height/3,
                  // width: double.infinity,
                  child:myImage,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// class EachPage extends StatelessWidget {
//
//   final String message;
//   final String image;
//
//   EachPage(this.message, this.image);
//
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       body: Container(
//         child: Center(
//           child: Column(
//             children: <Widget>[
//               Container(
//                 height: MediaQuery.of(context).size.height,
//                 width: double.infinity,
//                 child: Image.asset(
//                   image,
//                   fit: BoxFit.cover,
//                   ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }