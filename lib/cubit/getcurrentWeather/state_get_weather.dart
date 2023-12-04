import '../../models/weathermodel.dart';

class WeatherState {}

class WeatherinitialState extends WeatherState {}

class WeattherLoadedState extends WeatherState {
  final WeatherModel weathermodel;

  WeattherLoadedState(this.weathermodel);
}

class weatherFuilerState extends WeatherState {}
