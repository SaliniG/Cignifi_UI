import 'dart:async';

import 'package:contech_ui/login_screen.dart';
import 'package:contech_ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: brandColor));
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen())));
    return Container(
      color: brandColor,
      child: Center(
        child: Container(
            height: screenHeight * 0.17,
            width: screenWidth * 0.5,
            child: Image(image: new AssetImage("assets/images/app_icon.png"))),
      ),
    );
  }
}
