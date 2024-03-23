import 'dart:ffi';

import 'package:flutter/material.dart';

class ParagraphWidget extends StatelessWidget {
  final String text;
  final double textSize;
  const ParagraphWidget({Key? key, required this.text, required this.textSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(fontSize: textSize, color: Colors.grey, fontFamily: "Poppins", fontWeight: FontWeight.w500),
        textAlign: TextAlign.center);
  }
}
