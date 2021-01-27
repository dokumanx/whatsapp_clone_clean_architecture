import 'package:flutter/material.dart';
import 'package:whatsapp_clone_with_firebase/presentation/screens/registration_screen.dart';
import 'package:whatsapp_clone_with_firebase/presentation/widgets/theme/style.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = "/welcome_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Center(
          child: Column(
            children: [
              Text(
                "Welcome to WhatsApp",
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              Expanded(
                child: Image(
                  image: AssetImage("assets/brand.png"),
                  width: 300,
                ),
              ),
              Text(
                'Read our Privacy Policy Tap, \'Agree and continue\' '
                'to accept the Terms of Service',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.routeName);
                },
                color: primaryColor,
                child: Text(
                  "AGREE AND CONTINUE",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
