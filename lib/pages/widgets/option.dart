import 'package:flutter/material.dart';
import 'package:todays/constant/value_manager.dart';

class Option extends StatefulWidget {
  final String title;
  final String image;
  const Option({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  State<Option> createState() => _OptionState();
}

class _OptionState extends State<Option> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Container(
          height: 300,
          width: 220,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset(
                    widget.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 20,
                width: 150,
                decoration: const BoxDecoration(
                  color: Color(0xff65c4fe),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Text(widget.title),
              )
            ],
          ),
        ));
  }
}
