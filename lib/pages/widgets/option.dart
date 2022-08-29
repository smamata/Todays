import 'package:flutter/material.dart';
import 'package:todays/constant/color_manager.dart';
import 'package:todays/constant/font_manager.dart';

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
          height: 200,
          width: 180,
          decoration: BoxDecoration(
            color: ColorManager.lightColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.black12,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    widget.image,
                  ),
                ),
              ),
              Container(
                height: 30,
                width: 150,
                decoration: const BoxDecoration(
                  color: Color(0xff65c4fe),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Text(widget.title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontFamily: "Montserrat-Regular.ttf",
                        color: Colors.white,
                        fontSize: FontSizeManager.s20)),
              )
            ],
          ),
        ));
  }
}
