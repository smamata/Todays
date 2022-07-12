import 'package:todays/data/quotes_model.dart';
import 'package:todays/data/weather_model.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

class APIProvider {
// Weather
  Future<WeatherResponse> fetchWeather() async {
    var url =
        Uri.parse("https://nepal-weather-api.herokuapp.com/api/?place=all");
    try {
      http.Response response = await http.get(url);
      return WeatherResponse.fromJson(response.body);
    } on SocketException catch (_) {
      throw const SocketException("No internet connection");
    } on FormatException catch (_) {
      throw const FormatException("Invalid Data");
    }
  }

// Quotes
  Future<QuotesResponse> fetchQuotes() async {
    var url = Uri.parse("https://dummyjson.com/quotes/");
    try {
      http.Response response = await http.get(url);
      return QuotesResponse.fromJson(response.body);
    } on SocketException catch (_) {
      throw const SocketException("No internet connection");
    } on FormatException catch (_) {
      throw const FormatException("Invalid Data");
    }
  }
}
