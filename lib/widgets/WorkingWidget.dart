import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WorkingWidget extends StatelessWidget {
  const WorkingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: SvgPicture.asset(
        "images/illustration-working.svg",
        height: 200, // Adjust the height as needed
      ),
    );
  }
}
