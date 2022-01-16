import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'genderCardContent.dart';
import 'reusableCard.dart';

const Color CARD_BACKGROUND_COLOR = Color(0xFF1D1E33);
const Color INACTIVE_BACKGROUND_COLOR = Color(0xFF111328);
const Color ACCENT_COLOR = Color(0xFFEB1555);
const double BOTTOM_BAR_HEIGHT = 80.0;

enum Gender { female, male, none }

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.none;

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
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  cardChild: GenderCardContent(
                    icon: FontAwesomeIcons.mars,
                    gender: 'MALE',
                  ),
                  cardColor: selectedGender == Gender.male
                      ? CARD_BACKGROUND_COLOR
                      : INACTIVE_BACKGROUND_COLOR,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  cardChild: GenderCardContent(
                    gender: 'FEMALE',
                    icon: FontAwesomeIcons.venus,
                  ),
                  cardColor: selectedGender == Gender.female
                      ? CARD_BACKGROUND_COLOR
                      : INACTIVE_BACKGROUND_COLOR,
                ),
              )
            ],
          )),
          Expanded(
            child: ReusableCard(
              onPress: () {},
              cardChild: Row(),
              cardColor: CARD_BACKGROUND_COLOR,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    cardChild: Column(),
                    cardColor: CARD_BACKGROUND_COLOR,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    cardChild: Column(),
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
