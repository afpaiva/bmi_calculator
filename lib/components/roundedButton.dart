import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({required this.onPressed, required this.icon});

  VoidCallback onPressed;

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0.0,
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: k_BUTTON_COLOR,
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
    );
  }
}
