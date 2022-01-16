import 'package:flutter/material.dart';
import 'reusableCard.dart';

const Color CARD_BACKGROUND_COLOR = Color(0xFF1D1E33);
const Color ACCENT_COLOR = Color(0xFFEB1555);
const double BOTTOM_BAR_HEIGHT = 80.0;

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  cardColor: CARD_BACKGROUND_COLOR,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardColor: CARD_BACKGROUND_COLOR,
                ),
              )
            ],
          )),
          Expanded(
            child: ReusableCard(
              cardColor: CARD_BACKGROUND_COLOR,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardColor: CARD_BACKGROUND_COLOR,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: CARD_BACKGROUND_COLOR,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: ACCENT_COLOR,
            height: BOTTOM_BAR_HEIGHT,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}
