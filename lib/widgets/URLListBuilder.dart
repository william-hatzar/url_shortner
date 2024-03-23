import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class URLListViewBuilder extends StatefulWidget {
  final List<String> urls;
  final TextEditingController urlInput;
  const URLListViewBuilder({Key? key, required this.urls, required this.urlInput}) : super(key: key);

  @override
  State<URLListViewBuilder> createState() => _URLListViewBuilderState();
}

class _URLListViewBuilderState extends State<URLListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        widget.urls.length,
            (index) =>
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                alignment: Alignment.center,
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        widget.urlInput.text,
                        style: const TextStyle(
                          fontFamily: "Poppins",
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const Divider(color: Color(0xffE6E6E6), thickness: 2),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        widget.urls[index],
                        style: const TextStyle(
                          fontFamily: "Poppins",
                          color: Color(0xff58C3BC),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Clipboard.setData(ClipboardData(text: widget.urls[index]));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 315,
                        decoration: BoxDecoration(
                          color: const Color(0xff2AD1D1),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: const Text(
                          "Copy",
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
              ),
            ),
      ),
    );
  }
}
