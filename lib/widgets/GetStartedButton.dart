import 'dart:developer';

import 'package:flutter/material.dart';

class GetStartedButton extends StatefulWidget {
  const GetStartedButton({Key? key}) : super(key: key);

  @override
  State<GetStartedButton> createState() => _GetStartedButtonState();
}

class _GetStartedButtonState extends State<GetStartedButton> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(

      onTap: () {
        debugPrint("Do something with the Get Started button");
      },
      child: Center(
        child: Container(
          alignment: Alignment.center,
          height: 60,
          width: 190,
          decoration: BoxDecoration(
              color: const Color(0xff2AD1D1),
              borderRadius: BorderRadius.circular(40.0)
          ),
          child: const Text(
            "Get Started",
            style: TextStyle(
                fontSize: 20,
                fontFamily: "Poppins",
                color: Colors.white,
                fontWeight: FontWeight.w700
            ),
          ),
        ),
      ),
    );
  }
}
