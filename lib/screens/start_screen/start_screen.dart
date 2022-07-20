import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

 static String routeName = "/splash";

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
 

  @override
void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SplashScreen()));
    });
  }


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFE2550),
      body: Center(
        child: Image(image: AssetImage('assets/images/Vector.png')),
      ),
    );
    
  }
}