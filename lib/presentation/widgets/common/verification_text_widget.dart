import 'package:flutter/material.dart';
import 'package:whatsapp_clone_with_firebase/presentation/widgets/theme/style.dart';

class VerificationTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(""),
            Text(
              "Verify your phone number",
              style: TextStyle(
                  color: greenColor, fontSize: 18, fontWeight: FontWeight.w500),
            ),
            Icon(Icons.more_vert)
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "WhatsApp Clone will send and SMS message"
          " (carrier charges may apply) to verify your phone number. "
          "Enter your country code and phone number:",
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
