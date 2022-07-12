import 'package:flutter/material.dart';
import 'package:todays/constant/color_manager.dart';
import 'package:todays/constant/font_manager.dart';

class QuotesBox extends StatefulWidget {
  final String quote;
  final String author;
  const QuotesBox({Key? key, required this.quote, required this.author})
      : super(key: key);

  @override
  State<QuotesBox> createState() => _QuotesBoxState();
}

class _QuotesBoxState extends State<QuotesBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color(0xff65c4fe),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 15.0,
              spreadRadius: 3.0,
              offset: Offset(
                10.0,
                10.0,
              ),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.quote,
                style: const TextStyle(
                    fontFamily: FontConstant.f2,
                    fontSize: 20,
                    color: ColorManager.lightColor),
              ),
              const SizedBox(height: 10),
              Text(
                "Author : " + widget.author,
                style: TextStyle(
                    fontFamily: FontConstant.f2,
                    fontSize: 20,
                    color: ColorManager.lightColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
