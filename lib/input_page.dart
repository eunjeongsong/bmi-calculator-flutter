import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const buttonContainerHeight = 80.0;
const buttonContainerColour = Color(0xFFEB1555);
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;

  // 1 = male, 2 = female
  void updateColour(int gender) {
    if (gender == 1) {
      if (maleCardColour == inactiveCardColour) {
        maleCardColour = activeCardColour;
      } else {
        maleCardColour = inactiveCardColour;
      }
    } else if (gender == 2) {
      if (femaleCardColour == inactiveCardColour) {
        femaleCardColour = activeCardColour;
      } else {
        femaleCardColour = inactiveCardColour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(1);
                      });
                    },
                    child: ResusableCard(
                      colour: maleCardColour,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: "MALI",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(2);
                      });
                    },
                    child: ResusableCard(
                      colour: femaleCardColour,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: "MAIL",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ResusableCard(
              colour: activeCardColour,
            ),
          ),
          Expanded(
            child: Row(
              children: const <Widget>[
                Expanded(
                  child: ResusableCard(
                    colour: activeCardColour,
                  ),
                ),
                Expanded(
                  child: ResusableCard(
                    colour: activeCardColour,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: buttonContainerColour,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: buttonContainerHeight,
          )
        ],
      ),
      floatingActionButton: Theme(
        data: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: Colors.purple,
          ),
        ),
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
