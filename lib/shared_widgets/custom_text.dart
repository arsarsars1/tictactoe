import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final List<Shadow> shadows;
  const CustomText(
      {Key? key,
      required this.text,
      required this.fontSize,
      required this.shadows})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: fontSize,
        shadows: shadows,
      ),
    );
  }
}
