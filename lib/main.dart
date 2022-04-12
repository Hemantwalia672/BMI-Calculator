// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_one.dart';
import 'constants.dart';
import 'icon_content.dart';

enum Gender { male, female }

void main() {
  return runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0A0E21),
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: InputPage(),
      ),
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedgender;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            ],
          ),
        ),
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
