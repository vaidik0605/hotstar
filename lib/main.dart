import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'firstpage.dart';

void main() {
  runApp(MaterialApp(
    home: splesh(),
  debugShowCheckedModeBanner: false,

  ));
}

class splesh extends StatefulWidget {
  const splesh({Key? key}) : super(key: key);

  @override
  State<splesh> createState() => _spleshState();
}

class _spleshState extends State<splesh> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          stops: [0.2,0.5,0.9],
          end: Alignment.bottomCenter,
          colors: [
            Color(2064060980),
            Color(2064525715),
            Color(2069789415),
          ],
        ),
      ),
      child: AnimatedSplashScreen(
        splash: Image.asset("images/Disney+Hotstar-removebg-preview.png"),
        nextScreen:firstpage(),
        animationDuration: Duration(milliseconds: 1000),
        backgroundColor: Colors.transparent,
        splashIconSize: 300,
      )
    );
  }
}
