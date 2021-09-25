import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/components/slider_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late Gender selectedGender = Gender.male;
  int height = 180;
  int weight = 40;
  int age = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 18.0, top: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Let\'s Check',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'futura medium bt',
                  ),
                ),
                Text(
                  'if you are fit in your range',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  'Gender',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: Container(
                      child: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'Male',
                        iconColor: selectedGender == Gender.male
                            ? Colors.white
                            : Colors.black,
                        textColor: selectedGender == Gender.male
                            ? Colors.white
                            : Colors.black,
                      ),
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: selectedGender == Gender.male
                            ? Color(0xFFA45809)
                            : Color(0xFFEFE4CA),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: Container(
                      child: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'Female',
                        iconColor: selectedGender == Gender.female
                            ? Colors.white
                            : Colors.black,
                        textColor: selectedGender == Gender.female
                            ? Colors.white
                            : Colors.black,
                      ),
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: selectedGender == Gender.male
                            ? Color(0xFFEFE4CA)
                            : Color(0xFFA45809),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                // Expanded(
                //   child: null,
                // ),
              ],
            ),
          ),
          Expanded(
            child: SliderCard(
              colour: Color(0xFFFFFFFF),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Text(
                        'height(cm)',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w900, //A45809
                        ),
                      ),
                      SizedBox(
                        width: 250.0,
                      ),
                      Text(
                        height.toString(),
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFA45809),
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        thumbColor: Color(0xFFBEA874),
                        activeTrackColor: Color(0xFFA45809),
                        inactiveTrackColor: Color(0xFFEFE4CA),
                        overlayColor: Color(0xFFA45809),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 10.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 20.0)),
                    child: Slider(
                      onChanged: (double value) {
                        setState(() {
                          height = value.round();
                        });
                      },
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SliderCard(
              colour: Color(0xFFFFFFFF),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Text(
                        'weight(Kg)',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w900, //A45809
                        ),
                      ),
                      SizedBox(
                        width: 250.0,
                      ),
                      Text(
                        weight.toString(),
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFA45809),
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        thumbColor: Color(0xFFBEA874),
                        activeTrackColor: Color(0xFFA45809),
                        inactiveTrackColor: Color(0xFFEFE4CA),
                        overlayColor: Color(0xFFA45809),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 10.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 20.0)),
                    child: Slider(
                      onChanged: (double value) {
                        setState(() {
                          weight = value.round();
                        });
                      },
                      value: weight.toDouble(),
                      min: 20,
                      max: 220.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SliderCard(
              colour: Color(0xFFFFFFFF),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Text(
                        'Age',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w900, //A45809
                        ),
                      ),
                      SizedBox(
                        width: 300.0,
                      ),
                      Text(
                        age.toString(),
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFA45809),
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        thumbColor: Color(0xFFBEA874),
                        activeTrackColor: Color(0xFFA45809),
                        inactiveTrackColor: Color(0xFFEFE4CA),
                        overlayColor: Color(0xFFA45809),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 10.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 20.0)),
                    child: Slider(
                      onChanged: (double value) {
                        setState(() {
                          age = value.round();
                        });
                      },
                      value: age.toDouble(),
                      min: 10,
                      max: 220.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  print(height);
                });
              },
              child: Container(
                child: Center(
                  child: Text(
                    'Calculate bmi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Color(0xFFA45809),
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
