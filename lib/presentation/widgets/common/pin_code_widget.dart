import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeWidget extends StatefulWidget {
  @override
  _PinCodeWidgetState createState() => _PinCodeWidgetState();
}

class _PinCodeWidgetState extends State<PinCodeWidget> {
  TextEditingController _pinEditingController = TextEditingController();

  @override
  void dispose() {
    _pinEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          PinCodeTextField(
            length: 6,
            backgroundColor: Colors.transparent,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            autoDismissKeyboard: true,
            controller: _pinEditingController,
            textInputType: TextInputType.number,
            onChanged: (pinCode) {
              print(pinCode);
            },
          ),
          Text('Enter your 6 digit code'),
        ],
      ),
    );
  }
}
