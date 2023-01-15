import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? width;
  const CustomButton(
      {Key? key, required this.onPressed, required this.text, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthPx = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.blue,
          blurRadius: 5,
          spreadRadius: 0,
        )
      ]),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            minimumSize: Size(
          width ?? widthPx,
          50,
        )),
        child: Text(
          text,
        ),
      ),
    );
  }
}
