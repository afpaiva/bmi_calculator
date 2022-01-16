import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'genderCardContent.dart';
import 'reusableCard.dart';
import 'constants.dart';

enum Gender { female, male, none }

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.none;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      ? k_ACTIVE_BACKGROUND_COLOR
                      : k_INACTIVE_BACKGROUND_COLOR,
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
                      ? k_ACTIVE_BACKGROUND_COLOR
                      : k_INACTIVE_BACKGROUND_COLOR,
                ),
              )
            ],
          )),
          Expanded(
            child: ReusableCard(
              onPress: () {},
              cardColor: k_ACTIVE_BACKGROUND_COLOR,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: k_LABEL_TEXT_STYLE,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: k_VALUE_TEXT_STYLE,
                      ),
                      Text(
                        ' cm',
                        style: k_LABEL_TEXT_STYLE,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      activeColor: k_ACCENT_COLOR,
                      inactiveColor: k_INACTIVE_SLIDER_COLOR,
                      onChanged: (double newHeight) {
                        setState(() {
                          height = newHeight.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    cardChild: Column(),
                    cardColor: k_ACTIVE_BACKGROUND_COLOR,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    cardChild: Column(),
                    cardColor: k_ACTIVE_BACKGROUND_COLOR,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: k_ACCENT_COLOR,
            height: k_BOTTOM_BAR_HEIGHT,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}
