import 'package:flutter/material.dart';
import 'package:whatsapp_clone_with_firebase/presentation/widgets/theme/style.dart';

class CustomNextButton extends StatelessWidget {
  final String routeName;

  const CustomNextButton({
    Key key,
    this.routeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: greenColor,
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Text(
        'Next',
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
