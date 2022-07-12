import 'dart:convert';

import 'package:flutter/foundation.dart';

class WeatherResponse {
  String status;
  List<Weather>? weather;
  WeatherResponse({
    required this.status,
    this.weather,
  });

  WeatherResponse copyWith({
    String? status,
    List<Weather>? weather,
  }) {
    return WeatherResponse(
      status: status ?? this.status,
      weather: weather ?? this.weather,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'status': status});
    if (weather != null) {
      result.addAll({'weather': weather!.map((x) => x.toMap()).toList()});
    }

    return result;
  }

  factory WeatherResponse.fromMap(Map<String, dynamic> map) {
    return WeatherResponse(
      status: map['status'] ?? '',
      weather: map['weather'] != null
          ? List<Weather>.from(map['weather']?.map((x) => Weather.fromMap(x)))
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory WeatherResponse.fromJson(String source) =>
      WeatherResponse.fromMap(json.decode(source));

  @override
  String toString() => 'WeatherResponse(status: $status, weather: $weather)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is WeatherResponse &&
        other.status == status &&
        listEquals(other.weather, weather);
  }

  @override
  int get hashCode => status.hashCode ^ weather.hashCode;
}

class Weather {
  String status;
  String place;
  String max;
  String min;
  String rain;
  Weather({
    required this.status,
    required this.place,
    required this.max,
    required this.min,
    required this.rain,
  });

  Weather copyWith({
    String? status,
    String? place,
    String? max,
    String? min,
    String? rain,
  }) {
    return Weather(
      status: status ?? this.status,
      place: place ?? this.place,
      max: max ?? this.max,
      min: min ?? this.min,
      rain: rain ?? this.rain,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'status': status});
    result.addAll({'place': place});
    result.addAll({'max': max});
    result.addAll({'min': min});
    result.addAll({'rain': rain});

    return result;
  }

  factory Weather.fromMap(Map<String, dynamic> map) {
    return Weather(
      status: map['status'] ?? '',
      place: map['place'] ?? '',
      max: map['max'] ?? '',
      min: map['min'] ?? '',
      rain: map['rain'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Weather.fromJson(String source) =>
      Weather.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Weather(status: $status, place: $place, max: $max, min: $min, rain: $rain)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Weather &&
        other.status == status &&
        other.place == place &&
        other.max == max &&
        other.min == min &&
        other.rain == rain;
  }

  @override
  int get hashCode {
    return status.hashCode ^
        place.hashCode ^
        max.hashCode ^
        min.hashCode ^
        rain.hashCode;
  }
}
