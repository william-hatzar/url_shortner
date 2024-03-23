import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_shortner/constants.dart';
import 'package:url_shortner/widgets/ParagraphWidget.dart';
import 'package:url_shortner/widgets/TitleWidget.dart';

class FeatureWidget extends StatelessWidget {
  final String title;
  final String paragraph;
  final String imagePath;
  const FeatureWidget({Key? key, required this.title, required this.paragraph, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Stack(
        children: [
          Container(
            height: 260,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 80),
                TitleWidget(text: title, fontSize: 20),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ParagraphWidget(text: paragraph, textSize: 16),
                )
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: (MediaQuery.of(context).size.width - 160) / 2, // Adjust this value as needed
            child: Transform.translate(
              offset: Offset(0, -35), // Adjust this value to shift the image up by half its height
              child: Container(
                width: 90,
                height: 90,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff3A3053),
                ),
                child: Center(
                  child: SvgPicture.asset(
                   imagePath,
                    width: 40, // Adjust width and height as needed
                    height: 40,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
