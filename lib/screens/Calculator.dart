// ignore_for_file: prefer_const_constructors, file_names

import 'package:calculator/widgets/calc_button.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String output = '';
  String operation = '';
  String textToDisplay = '';
  double num1 = 0.0;
  double num2 = 0.0;
  String history = '';

  void btnOnClick(String btnVal) {
    if (btnVal == 'C') {
      textToDisplay = '';
      num1 = 0;
      num2 = 0;
      output = '';
    } else if (btnVal == 'AC') {
      textToDisplay = '';
      num1 = 0;
      num2 = 0;
      output = '';
      history = '';
    } else if (btnVal == '+/-') {
      if (textToDisplay[0] != '-') {
        output = '-$textToDisplay';
      } else {
        output = textToDisplay.substring(1);
      }
    } else if (btnVal == '<') {
      output = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'X' ||
        btnVal == '/') {
      num1 = double.parse(textToDisplay);
      output = '';
      operation = btnVal;
    } else if (btnVal == '=') {
      num2 = double.parse(textToDisplay);
      if (operation == '+') {
        output = (num1 + num2).toString();
        history = num1.toString() + operation.toString() + num2.toString();
      }
      if (operation == '-') {
        output = (num1 - num2).toString();
        history = num1.toString() + operation.toString() + num2.toString();
      }
      if (operation == 'X') {
        output = (num1 * num2).toString();
        history = num1.toString() + operation.toString() + num2.toString();
      }
      if (operation == '/') {
        output = (num1 / num2).toStringAsPrecision(5);
        history = num1.toString() + operation.toString() + num2.toString();
      }
    } else {
      output = int.parse(textToDisplay + btnVal).toString();
    }
    setState(() {
      textToDisplay = output;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text("Calculator"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment(1, 1),
              child: Padding(
                padding: EdgeInsets.only(right: 12),
                child: Text(
                  history,
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
            Container(
              alignment: Alignment(1.0, 1.0),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  textToDisplay,
                  style: TextStyle(fontSize: 48, color: Colors.white),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButtton(
                  text: 'AC',
                  textColor: 0xff09fc05,
                  textSize: 20,
                  callback: btnOnClick,
                  fillColor: 0xff000000,
                ),
                CalculatorButtton(
                  text: 'C',
                  textColor: 0xff09fc05,
                  textSize: 24,
                  callback: btnOnClick,
                  fillColor: 0xff000000,
                ),
                CalculatorButtton(
                  text: '<',
                  textColor: 0xff09fc05,
                  textSize: 24,
                  callback: btnOnClick,
                  fillColor: 0xff000000,
                ),
                CalculatorButtton(
                  text: '/',
                  textColor: 0xff09fc05,
                  textSize: 24,
                  callback: btnOnClick,
                  fillColor: 0xff000000,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButtton(
                  text: '9',
                  textColor: 0xffffffff,
                  textSize: 24,
                  callback: btnOnClick,
                  fillColor: 0xff000000,
                ),
                CalculatorButtton(
                  text: '8',
                  textColor: 0xffffffff,
                  textSize: 24,
                  callback: btnOnClick,
                  fillColor: 0xff000000,
                ),
                CalculatorButtton(
                  text: '7',
                  textColor: 0xffffffff,
                  textSize: 24,
                  callback: btnOnClick,
                  fillColor: 0xff000000,
                ),
                CalculatorButtton(
                  text: 'X',
                  textColor: 0xff09fc05,
                  textSize: 24,
                  callback: btnOnClick,
                  fillColor: 0xff000000,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButtton(
                  text: '6',
                  textColor: 0xffffffff,
                  textSize: 24,
                  callback: btnOnClick,
                  fillColor: 0xff000000,
                ),
                CalculatorButtton(
                  text: '5',
                  textColor: 0xffffffff,
                  textSize: 24,
                  callback: btnOnClick,
                  fillColor: 0xff000000,
                ),
                CalculatorButtton(
                  text: '4',
                  textColor: 0xffffffff,
                  textSize: 24,
                  callback: btnOnClick,
                  fillColor: 0xff000000,
                ),
                CalculatorButtton(
                  text: '-',
                  textColor: 0xff09fc05,
                  textSize: 24,
                  callback: btnOnClick,
                  fillColor: 0xff000000,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButtton(
                  text: '3',
                  textColor: 0xffffffff,
                  textSize: 24,
                  callback: btnOnClick,
                  fillColor: 0xff000000,
                ),
                CalculatorButtton(
                  text: '2',
                  textColor: 0xffffffff,
                  textSize: 24,
                  callback: btnOnClick,
                  fillColor: 0xff000000,
                ),
                CalculatorButtton(
                  text: '1',
                  textColor: 0xffffffff,
                  textSize: 24,
                  callback: btnOnClick,
                  fillColor: 0xff000000,
                ),
                CalculatorButtton(
                  text: '+',
                  textColor: 0xff09fc05,
                  textSize: 24,
                  callback: btnOnClick,
                  fillColor: 0xff000000,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButtton(
                  text: '+/-',
                  textColor: 0xff09fc05,
                  textSize: 22,
                  callback: btnOnClick,
                  fillColor: 0xff000000,
                ),
                CalculatorButtton(
                  text: '0',
                  textColor: 0xffffffff,
                  textSize: 24,
                  callback: btnOnClick,
                  fillColor: 0xff000000,
                ),
                CalculatorButtton(
                  text: '00',
                  textColor: 0xffffffff,
                  textSize: 24,
                  callback: btnOnClick,
                  fillColor: 0xff000000,
                ),
                CalculatorButtton(
                  text: '=',
                  textColor: 0xffffffff,
                  textSize: 24,
                  callback: btnOnClick,
                  fillColor: 0xff7f8014,
                ),
              ],
            ),
          ],
        ));
  }
}
