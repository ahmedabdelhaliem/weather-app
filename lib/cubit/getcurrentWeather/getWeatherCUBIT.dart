import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/cubit/getcurrentWeather/state_get_weather.dart';
import 'package:untitled/models/weathermodel.dart';

import '../../Serives/serives.dart';

class GetWeatherCupit extends Cubit<WeatherState> {
  GetWeatherCupit() : super(WeatherinitialState());
  getWeather({required String Cityname}) async {
    try {
      WeatherModel weatherModel =
          await SerivesWeather(Dio()).getCurrentWeather(Cityname: Cityname);
      emit(WeattherLoadedState(weatherModel));
    } catch (e) {
      emit(weatherFuilerState());
    }
  }
}
