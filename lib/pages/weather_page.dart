import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todays/business_logic/bloc/bloc/weather_bloc.dart';
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
        body: BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, state) {
            if (state is WeatherFailed) {
              return Center(
                child: Text(state.message.toString()),
              );
            } else if (state is WeatherLoaded) {
              return ListView.builder(
                  itemCount: state.model.weather!.length,
                  itemBuilder: (BuildContext context, index) {
                    var data = state.model.weather![index];
                    return WeatherBox(
                        name: data.place,
                        max: data.max,
                        min: data.min,
                        rain: data.rain);
                  });
            } else {
              return const CircularProgressIndicator();
            }
          },
        ));
  }
}
