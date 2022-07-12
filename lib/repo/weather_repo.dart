import 'package:todays/data/data_provider.dart';
import 'package:todays/data/weather_model.dart';

abstract class WeatherRepo {
  Future<WeatherResponse> fetchWeather();
}

class RealWeatherRepo implements WeatherRepo {
  final APIProvider _apiProvider = APIProvider();
  @override
  Future<WeatherResponse> fetchWeather() {
    return _apiProvider.fetchWeather();
  }
}
