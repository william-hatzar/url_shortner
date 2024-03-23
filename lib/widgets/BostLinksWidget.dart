import 'package:flutter/material.dart';
import 'package:url_shortner/widgets/GetStartedButton.dart';
import 'package:url_shortner/widgets/TitleWidget.dart';

class BoostLinksWidget extends StatelessWidget {
  const BoostLinksWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 270,
      decoration: const BoxDecoration(
          color: Color(0xff4B406B)
      ),
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TitleWidget(text: "Boost your links today", fontSize: 30, color: Colors.white),
            SizedBox(height: 25),
            GetStartedButton()
          ],
        ),
      ),
    );
  }
}
