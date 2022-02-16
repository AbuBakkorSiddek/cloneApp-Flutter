import 'dart:async';
import 'package:airtelapp/Saverces/NavigatorPageRoute.dart';
import 'package:airtelapp/pages/HomePage.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),
            ()=> NavigatorPageRoute(context,HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Image.asset('images/splashicon.png'),
                ),

              ],
            ),


      ),

    );
  }
}
