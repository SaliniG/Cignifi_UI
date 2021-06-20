import 'package:contech_ui/signup_screen.dart';
import 'package:contech_ui/utils/colors.dart';
import 'package:contech_ui/utils/common_button.dart';
import 'package:contech_ui/utils/common_logo_widget.dart';
import 'package:contech_ui/utils/common_textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.white));
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: Colors.white,
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: screenHeight * 0.08,
                  ),
                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Cignifi',
                        style: TextStyle(
                            color: brandColor,
                            fontWeight: FontWeight.w800,
                            fontSize: 30),
                      )),
                  SizedBox(
                    height: screenHeight * 0.05,
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(15),
                      child: Text(
                        'Login to your Account',
                        style: TextStyle(
                            color: grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      )),
                  SizedBox(
                    height: screenHeight * 0.04,
                  ),
                  commonTextField(context, screenHeight, 'Email'),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  commonTextField(context, screenHeight, 'Password'),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  commonButton(context, screenHeight, 'Sign in'),
                  SizedBox(
                    height: screenHeight * 0.08,
                  ),
                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '- Or  sign in with -',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      )),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      commonLogoWidget(context, screenHeight, screenWidth,
                          'assets/images/google_logo.png'),
                      commonLogoWidget(context, screenHeight, screenWidth,
                          'assets/images/facebook_logo.png'),
                      commonLogoWidget(context, screenHeight, screenWidth,
                          'assets/images/twitter_logo.png'),
                    ],
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          child: Row(
                        children: <Widget>[
                          Text(
                            "Don't have an account?",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Container(
                            height: 20,
                            width: screenWidth * 0.25,
                            child: FlatButton(
                              textColor: brandColor,
                              child: Text(
                                'Sign up',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return SignInScreen();
                                }));
                              },
                            ),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      )),
                    ),
                  ),
                ],
              )),
        ));
  }
}
