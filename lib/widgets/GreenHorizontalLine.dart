import 'package:flutter/material.dart';

class GreenHorizontalLine extends StatelessWidget {
  final double width;
  final double height;

  GreenHorizontalLine({this.width = 100.0, this.height = 2.0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 180, right: 200),
      child: Container(
        width: width,
        height: height,
        color: const Color(0xff2CD0D1),
      ),
    );
  }
}