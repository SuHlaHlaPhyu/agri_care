import 'package:agricare/data/agriCareButton.dart';
import 'package:agricare/data/method_utils.dart';
import 'package:flutter/material.dart';

import 'main_page.dart';

class MyHomePage extends StatefulWidget {
  static final String route = "/";

  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.white,
                  child: Stack(
                    children: [
                      ClipPath(
                        child: Container(color: Colors.green),
                        clipper: CurvedClipperBackground(),
                      ),
                      ClipPath(
                        child: Image.asset('assets/images/background.jpg'),
                        clipper: CurvedClipperForeground(),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AgriCareButton(
                            height: 40,
                            width: 120,
                            text: "LOGIN",
                            textColor: Colors.black,
                            backgroundColor: Color(0xFF66BB6A),
                            cornerRadius: 20,
                            elevation: 2,
                            onTap: () => Method.showLoginDialog(context),
                          ),
                          AgriCareButton(
                            height: 40,
                            width: 120,
                            text: "SKIP",
                            textColor: Colors.black,
                            backgroundColor: Color(0xFF66BB6A),
                            cornerRadius: 20,
                            elevation: 2,
                            onTap: () => Navigator.pushReplacementNamed(
                                context, MainPage.route),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing',
                        style: TextStyle(
                          color: Color(0x99000000),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 80.0,
                  ),
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new AssetImage('assets/images/a_logo.png'),
                      ),
                    ),
                  ),
                ),
                Text(
                  'AgriCare',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CurvedClipperForeground extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 110);
    var controlPoint = Offset(200, size.height);
    var endPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy - 20);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class CurvedClipperBackground extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 135);
    var controlPoint = Offset(250, size.height);
    var endPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx + 60, endPoint.dy - 55);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
