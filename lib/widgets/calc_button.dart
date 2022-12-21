import 'package:flutter/material.dart';

class CalculatorButtton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callback;
  const CalculatorButtton(
      {super.key,
      required this.text,
      required this.fillColor,
      required this.textColor,
      required this.textSize,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width*0.25,
        height: 70,
        child: TextButton(
          style: TextButton.styleFrom(
              foregroundColor: Color(textColor),
              backgroundColor: Color(fillColor),
              ),
          onPressed: () => callback(text),
          child: Text(
            text,
            style: TextStyle(fontSize: textSize),
          ),
        ));
  }
}
