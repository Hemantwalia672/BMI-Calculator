// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_one.dart';
import 'constants.dart';
import 'icon_content.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedgender;
  int height = 164;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // for upper 2 icons
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: CardOne(
                    onPress: () {
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                    cardChild: IconContent(
                      gendericon: FontAwesomeIcons.mars,
                      gender: 'MALE',
                    ),
                    colour: selectedgender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor),
              ),
              Expanded(
                child: CardOne(
                    onPress: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    cardChild: IconContent(
                      gendericon: FontAwesomeIcons.venus,
                      gender: 'FEMALE',
                    ),
                    colour: selectedgender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor),
              ),
            ],
          ),
        ),
        // for middle icon
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: CardOne(
                  onPress: () {
                    print('Working');
                  },
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "HEIGHT",
                        style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            height.toString(),
                            style: kNumberTextStyle,
                          ),
                          Text(
                            'cm',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                      Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        activeColor: Colors.pink,
                        inactiveColor: Colors.white,
                        onChanged: (double newvalue) {
                          setState(() {
                            height = newvalue.round();
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        // for bottom 2 icons
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: CardOne(
                    onPress: () {
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                    cardChild: IconContent(
                      gendericon: FontAwesomeIcons.mars,
                      gender: 'MALE',
                    ),
                    colour: selectedgender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor),
              ),
              Expanded(
                child: CardOne(
                    onPress: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    cardChild: IconContent(
                      gendericon: FontAwesomeIcons.venus,
                      gender: 'FEMALE',
                    ),
                    colour: selectedgender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor),
              ),
            ],
          ),
        ),
        SafeArea(
          child: Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          ),
        ),
      ],
    );
  }
}
