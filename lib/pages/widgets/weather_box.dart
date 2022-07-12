import 'package:flutter/material.dart';
import 'package:todays/constant/color_manager.dart';
import 'package:todays/constant/font_manager.dart';

class WeatherBox extends StatefulWidget {
  final String name;
  final String max;
  final String min;
  final String rain;
  const WeatherBox(
      {Key? key,
      required this.name,
      required this.max,
      required this.min,
      required this.rain})
      : super(key: key);

  @override
  State<WeatherBox> createState() => _WeatherBoxState();
}

class _WeatherBoxState extends State<WeatherBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 150,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color(0xff65c4fe),
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
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name:",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: FontSizeManager.s20,
                        fontWeight: FontWeightManager.bold),
                  ),
                  Text(
                    "Maximum temp:",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: FontSizeManager.s20,
                        fontWeight: FontWeightManager.bold),
                  ),
                  Text(
                    "Minimum Temp",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: FontSizeManager.s20,
                        fontWeight: FontWeightManager.bold),
                  ),
                  Text(
                    "Rain:",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: FontSizeManager.s20,
                        fontWeight: FontWeightManager.bold),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                      color: ColorManager.lightColor,
                      fontSize: FontSizeManager.s20,
                    ),
                  ),
                  Text(
                    widget.max,
                    style: TextStyle(
                      color: ColorManager.lightColor,
                      fontSize: FontSizeManager.s20,
                    ),
                  ),
                  Text(
                    widget.min,
                    style: TextStyle(
                      color: ColorManager.lightColor,
                      fontSize: FontSizeManager.s20,
                    ),
                  ),
                  Text(
                    widget.rain,
                    style: TextStyle(
                      color: ColorManager.lightColor,
                      fontSize: FontSizeManager.s20,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
