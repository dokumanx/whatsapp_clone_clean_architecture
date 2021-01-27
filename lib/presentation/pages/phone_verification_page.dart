import 'package:flutter/material.dart';
import 'package:whatsapp_clone_with_firebase/presentation/pages/set_initial_profile_page.dart';
import 'package:whatsapp_clone_with_firebase/presentation/widgets/common/custom_next_button.dart';
import 'package:whatsapp_clone_with_firebase/presentation/widgets/common/pin_code_widget.dart';
import 'package:whatsapp_clone_with_firebase/presentation/widgets/common/verification_text_widget.dart';

class PhoneVerificationPage extends StatelessWidget {
  static const routeName = "/phone_verification_page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: <Widget>[
            VerificationTextWidget(),
            PinCodeWidget(),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CustomNextButton(
                  routeName: SetInitialProfilePage.routeName,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
