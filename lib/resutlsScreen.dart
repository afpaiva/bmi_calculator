import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusableCard.dart';
import 'package:flutter/material.dart';
import 'reusableCard.dart';

class ResultsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'RESULTS',
          style: k_LABEL_TEXT_STYLE,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              child: Text(
                'YOUR RESULTS',
                style: k_VALUE_TEXT_STYLE,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardColor: k_ACTIVE_BACKGROUND_COLOR,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('OVERWEIGHT'), Text('Normal')],
              ),
            ),
          )
        ],
      ),
    );
  }
}
