import 'package:flutter/material.dart';
import 'package:whatsapp_clone_with_firebase/presentation/widgets/common/custom_next_button.dart';
import 'package:whatsapp_clone_with_firebase/presentation/widgets/common/profile_content_consumer.dart';
import 'package:whatsapp_clone_with_firebase/presentation/widgets/theme/style.dart';

class SetInitialProfilePage extends StatelessWidget {
  static const routeName = "/set_initial_profile_page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            Text(
              "Profile Info",
              style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Please provide your name and an optional Profile photo",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ProfileContentConsumer(),
            Expanded(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomNextButton(),
            ))
          ],
        ),
      ),
    );
  }
}
