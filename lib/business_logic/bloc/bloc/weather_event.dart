part of 'weather_bloc.dart';

abstract class WeatherEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetWeather extends WeatherEvent {
  GetWeather();
  @override
  List<Object?> get props => [];
}
