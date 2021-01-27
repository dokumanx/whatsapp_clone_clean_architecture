import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone_with_firebase/presentation/screens/welcome_screen.dart';
import 'package:whatsapp_clone_with_firebase/presentation/widgets/theme/style.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(
          context, WelcomeScreen.routeName, (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Image(
                  image: AssetImage("assets/whatsapp_icon.png"),
                  height: 80,
                  width: 80,
                ),
              ),
              Column(
                children: [
                  Text(
                    'from',
                    style: TextStyle(color: Colors.black.withOpacity(.5)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'FACEBOOK',
                    style: TextStyle(
                        fontSize: 16,
                        color: darkPrimaryColor,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 15,
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
