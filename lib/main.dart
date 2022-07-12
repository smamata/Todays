import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todays/business_logic/bloc/bloc/quotes/bloc/quotes_bloc.dart';
import 'package:todays/business_logic/bloc/bloc/weather_bloc.dart';
import 'package:todays/constant/theme_manager.dart';
import 'package:todays/pages/dashboard.dart';
import 'package:todays/pages/quotes_page.dart';
import 'package:todays/pages/weather_page.dart';
import 'package:todays/repo/quotes_repo.dart';
import 'package:todays/repo/weather_repo.dart';

void main() {
  runApp(const Todays());
}

class Todays extends StatefulWidget {
  const Todays({Key? key}) : super(key: key);

  @override
  State<Todays> createState() => _TodaysState();
}

class _TodaysState extends State<Todays> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: ((context) =>
                WeatherBloc(RealWeatherRepo())..add(GetWeather()))),
        BlocProvider(
            create: ((context) =>
                QuotesBloc(RealQuotesRepo())..add(GetQuotes()))),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Dashboard.id,
        routes: {
          Dashboard.id: (context) => const Dashboard(),
          Weather.id: (context) => const Weather(),
          Quotes.id: (context) => const Quotes(),
        },
      ),
    );
  }
}
