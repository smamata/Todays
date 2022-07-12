import 'package:flutter/material.dart';
import 'package:todays/pages/widgets/weather_box.dart';

class Weather extends StatefulWidget {
  static const String id = "Weather_screen";
  const Weather({Key? key}) : super(key: key);

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Weather"),
          backgroundColor: Color(0xff65c4fe),
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, index) {
              return WeatherBox(
                  name: "sss", max: "jnjn", min: "mnjnj", rain: "njnjnj");
            }));
  }
}
