import 'package:bmi_calculator/widget/icon_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/widget/reusable_cart.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      this.setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color: selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      content: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                      onPress: () {
                        this.setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      color: selectedGender == Gender.female
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        content: 'Female',
                      )),
                ),
              ],
            ),
          ),

          //
          // Expanded(
          //   child: ReusableCard(
          //     color: activeCardColor,
          //     cardChild: Column(
          //       children: <Widget>[
          //         Icon(FontAwesomeIcons.personArrowDownToLine)
          //       ],
          //     ),
          //   ),
          // ),

          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Expanded(
                //   child: ReusableCard(
                //     color: activeCardColor,
                //     cardChild: Column(
                //       children: <Widget>[
                //         Icon(FontAwesomeIcons.personArrowDownToLine)
                //       ],
                //     ),
                //   ),
                // ),
                // Expanded(
                //   child: ReusableCard(
                //     color: activeCardColor,
                //     cardChild: Column(
                //       children: <Widget>[
                //         Icon(FontAwesomeIcons.personArrowDownToLine)
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),

          Container(
            color: bottomContainerColor,
            height: bottomContainerHeight,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}
