import 'package:contech_ui/utils/colors.dart';
import 'package:contech_ui/utils/common_button.dart';
import 'package:contech_ui/utils/common_logo_widget.dart';
import 'package:contech_ui/utils/common_textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.white));
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_sharp,
              color: brandColor,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
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
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Create your Account',
                        style: TextStyle(
                            color: grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      )),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  commonTextField(context, screenHeight, 'Email'),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  commonTextField(context, screenHeight, 'Password'),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  commonTextField(context, screenHeight, 'Confirm Password'),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  commonButton(context, screenHeight, 'Sign up'),
                  SizedBox(
                    height: screenHeight * 0.05,
                  ),
                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '- Or  sign in with -',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w800,
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
                ],
              )),
        ));
  }
}
