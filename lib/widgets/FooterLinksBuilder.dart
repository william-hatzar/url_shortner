import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_shortner/widgets/ParagraphWidget.dart';
import 'package:url_shortner/widgets/TitleWidget.dart';

class FooterLinksBuilder extends StatelessWidget {

  FooterLinksBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 900,
          decoration: const BoxDecoration(
            color: Color(0xff232027),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              const TitleWidget(
                  text: "Shortly", fontSize: 35, color: Colors.white),
              const SizedBox(height: 30),
              const TitleWidget(
                  text: "Features", fontSize: 20, color: Colors.white),
              const SizedBox(height: 25),
              const ParagraphWidget(text: "Link Shortening", textSize: 15),
              const SizedBox(height: 5),
              const ParagraphWidget(text: "Brand Links", textSize: 15),
              const SizedBox(height: 5),
              const ParagraphWidget(text: "Analytics", textSize: 15),
              const SizedBox(height: 30),
              const TitleWidget(
                  text: "Resources", fontSize: 20, color: Colors.white),
              const SizedBox(height: 25),
              const ParagraphWidget(text: "Blog", textSize: 15),
              const SizedBox(height: 5),
              const ParagraphWidget(text: "Developers", textSize: 15),
              const SizedBox(height: 5),
              const ParagraphWidget(text: "Support", textSize: 15),
              const SizedBox(height: 30),
              const TitleWidget(
                  text: "Resources", fontSize: 20, color: Colors.white),
              const SizedBox(height: 25),
              const ParagraphWidget(text: "Blog", textSize: 15),
              const SizedBox(height: 5),
              const ParagraphWidget(text: "Developers", textSize: 15),
              const SizedBox(height: 5),
              const ParagraphWidget(text: "Support", textSize: 15),
              const SizedBox(height: 30),
              const TitleWidget(
                  text: "Company", fontSize: 20, color: Colors.white),
              const SizedBox(height: 25),
              const ParagraphWidget(text: "About", textSize: 15),
              const SizedBox(height: 5),
              const ParagraphWidget(text: "Our Team", textSize: 15),
              const SizedBox(height: 5),
              const ParagraphWidget(text: "Careers", textSize: 15),
              const SizedBox(height: 5),
              const ParagraphWidget(text: "Contact", textSize: 15),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset("images/icon-facebook.svg"),
                    SvgPicture.asset("images/icon-twitter.svg"),
                    SvgPicture.asset("images/icon-pinterest.svg"),
                    SvgPicture.asset("images/icon-instagram.svg"),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
