import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  const TitleWidget({Key? key ,required this.text, required this.fontSize, this.color = Colors.black}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: color,
              fontSize: fontSize,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700)),
    );
  }
}
