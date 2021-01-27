import 'package:flutter/material.dart';
import 'package:whatsapp_clone_with_firebase/presentation/pages/phone_verification_page.dart';
import 'package:whatsapp_clone_with_firebase/presentation/pages/set_initial_profile_page.dart';
import 'package:whatsapp_clone_with_firebase/presentation/screens/registration_screen.dart';
import 'package:whatsapp_clone_with_firebase/presentation/screens/splash_screen.dart';
import 'package:whatsapp_clone_with_firebase/presentation/screens/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Clone',
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        "/welcome_screen": (context) => WelcomeScreen(),
        "/registration_screen": (context) => RegistrationScreen(),
        "/phone_verification_page": (context) => PhoneVerificationPage(),
        "/set_initial_profile_page": (context) => SetInitialProfilePage(),
      },
    );
  }
}
