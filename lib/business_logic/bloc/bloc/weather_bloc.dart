import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todays/data/weather_model.dart';
import 'package:todays/repo/weather_repo.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepo _weatherRepo;
  WeatherBloc(this._weatherRepo) : super(WeatherInitial()) {
    on<GetWeather>((event, emit) async {
      emit(WeatherLoading());
      try {
        final response = await _weatherRepo.fetchWeather();
        if (response.status == 'true') {
          emit(WeatherLoaded(response));
        } else {
          emit(WeatherFailed("Failed"));
        }
      } catch (e) {
        emit(WeatherFailed(e.toString()));
      }
    });
  }
}
