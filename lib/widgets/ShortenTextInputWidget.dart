import 'package:flutter/material.dart';

class ShortenInputWidget extends StatefulWidget {
  final TextEditingController urlInput;
  final Function(String) shortenUrl;

  ShortenInputWidget({Key? key, required this.urlInput, required this.shortenUrl}) : super(key: key);

  @override
  State<ShortenInputWidget> createState() => _ShortenInputWidgetState();
}

class _ShortenInputWidgetState extends State<ShortenInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xff3A3053),
      ),
      height: 160,
      // Adjust the height of the container to resize the TextField
      width: 350,
      child: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              controller: widget.urlInput,
              maxLines: 1,
              // Allows the TextField to expand vertically
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Shorten a link here... ',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(
                    horizontal: 10),
              ),
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              widget.shortenUrl(widget.urlInput.text);
            },
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 315,
              decoration: BoxDecoration(
                color: const Color(0xff2AD1D1),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: const Text(
                "Shorten it!",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Poppins",
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
