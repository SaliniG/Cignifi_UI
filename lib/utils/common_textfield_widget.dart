import 'package:contech_ui/utils/colors.dart';
import 'package:flutter/material.dart';

Widget commonTextField(BuildContext context, var screenHeight, String text) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
    child: Container(
      height: screenHeight * 0.08,
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: grey05,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      child: TextField(
        obscureText: true,
        //  controller: passwordController,
        decoration: InputDecoration(
          labelText: text,
          border: InputBorder.none,
        ),
      ),
    ),
  );
}
