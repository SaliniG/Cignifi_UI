import 'package:contech_ui/utils/colors.dart';
import 'package:flutter/material.dart';

Widget commonLogoWidget(
    BuildContext context, var screenHeight, var screenWidth, String text) {
  return Container(
    height: screenHeight * 0.08,
    width: screenWidth * 0.25,
    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5.0),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: grey05,
          offset: Offset(0.0, 0.5), //(x,y)
          blurRadius: 6.0,
        ),
      ],
    ),
    child: Center(
        child: Container(
            color: Colors.white,
            height: screenHeight * 0.05,
            width: screenWidth * 0.08,
            child: Image(image: new AssetImage(text)))),
  );
}
