import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/resutlsScreen.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({required this.onTap, required this.title});

  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: k_BUTTON_TEXT_STYLE,
          ),
        ),
        color: k_ACCENT_COLOR,
        height: k_BOTTOM_BAR_HEIGHT,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
