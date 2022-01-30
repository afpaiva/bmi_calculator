import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusableCard.dart';
import 'package:flutter/material.dart';
import 'reusableCard.dart';
import 'bottomButton.dart';

class ResultsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: k_LABEL_TEXT_STYLE,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
            child: Text(
              'Your Results',
              textAlign: TextAlign.left,
              style: k_VALUE_TEXT_STYLE,
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardColor: k_ACTIVE_BACKGROUND_COLOR,
              cardChild: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'OVERWEIGHT',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 25.0,
                        ),
                      ),
                      Text(
                        '26.7',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 80.0,
                        ),
                      ),
                      Text(
                        'You have a higher than normal body weight.\n Try to exercise more.',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {},
            title: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
