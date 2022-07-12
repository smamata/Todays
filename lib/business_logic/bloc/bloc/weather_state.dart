part of 'weather_bloc.dart';

abstract class WeatherState extends Equatable {
  @override
  List<Object?> get props => [];
}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {
  WeatherLoading();
  @override
  List<Object?> get props => [];
}

class WeatherLoaded extends WeatherState {
  final WeatherResponse model;
  WeatherLoaded(this.model);
  @override
  List<Object?> get props => [model];
}

class WeatherFailed extends WeatherState {
  final String message;
  WeatherFailed(this.message);
  @override
  List<Object?> get props => [message];
}
