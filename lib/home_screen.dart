import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_shortner/constants.dart';
import 'package:url_shortner/widgets/BostLinksWidget.dart';
import 'package:url_shortner/widgets/FeatureWidget.dart';
import 'package:url_shortner/widgets/FooterLinksBuilder.dart';
import 'package:url_shortner/widgets/GetStartedButton.dart';
import 'package:url_shortner/widgets/GreenHorizontalLine.dart';
import 'package:url_shortner/widgets/ParagraphWidget.dart';
import 'package:url_shortner/widgets/ShortenTextInputWidget.dart';
import 'package:url_shortner/widgets/TitleWidget.dart';
import 'package:url_shortner/widgets/URLListBuilder.dart';
import 'package:url_shortner/widgets/WorkingWidget.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController urlInput = TextEditingController();
  List<String> urls = [];

  Future<void> _shortenURL(String url) async {
    final response = await http.post(
      Uri.parse('https://cleanuri.com/api/v1/shorten'),
      body: {'url': url},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        urls.add(data['result_url']);
      });
    } else {
      throw Exception('Failed to load shortened URL');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF0F1F6),
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: SvgPicture.asset(logoPath),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(Icons.menu),
          )
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(height: 20),
          const WorkingWidget(),
          const SizedBox(height: 10),
          TitleWidget(text: catchLine, fontSize: 40),
          const SizedBox(height: 10),
          ParagraphWidget(text: paragraph1, textSize: 17),
          const SizedBox(height: 30),
          const GetStartedButton(), // Keep GetStartedButton as it is
          const SizedBox(height: 60),
          Center(
            child: Column(
              children: [
                ShortenInputWidget(urlInput: urlInput, shortenUrl: _shortenURL),
                // Display the list of URLs without scrolling
                const SizedBox(height: 20),
                URLListViewBuilder(urls: urls, urlInput: urlInput)
              ],
            ),
          ),
          const SizedBox(height: 80),
          TitleWidget(text: advancedStatistics, fontSize: 25),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: ParagraphWidget(text: paragraph2, textSize: 17),
          ),
          const SizedBox(height: 80),
          FeatureWidget(
              title: brandRecognition,
              paragraph: paragraph3,
              imagePath: brandRecognitionImagePath),
          GreenHorizontalLine(height: 75, width: 10),
          FeatureWidget(
              title: detailedRecords,
              paragraph: paragraph4,
              imagePath: detailedRecordsImagePath),
          GreenHorizontalLine(height: 75, width: 10),
          FeatureWidget(
              title: fullyCustomisable,
              paragraph: paragraph5,
              imagePath: fullyCustomisableImagePath),
          const SizedBox(height: 50),
          const BoostLinksWidget(),
          FooterLinksBuilder()
        ],
      ),
    );
  }
}
