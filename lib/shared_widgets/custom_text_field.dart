import 'package:flutter/material.dart';
import 'package:tictactoe/export.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const CustomTextField(
      {Key? key, required this.controller, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.blue,
          spreadRadius: 2,
          blurRadius: 5,
        )
      ]),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          fillColor: CustomColor.bgColor,
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}
