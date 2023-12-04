import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:untitled/models/weathermodel.dart';

final String basUrl = 'http://api.weatherapi.com/v1';
final String apiKey = 'bd3f492f45c647e3a8811034232410';

class SerivesWeather {
  final Dio dio;
  SerivesWeather(this.dio);
  Future<WeatherModel> getCurrentWeather({required String Cityname}) async {
    try {
      var response =
          await dio.get('$basUrl/forecast.json?key=$apiKey&q=$Cityname&days=1');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errormessage =
          e.response?.data['error']['message'] ?? 'oop error';
      throw Exception(errormessage);
    } catch (e) {
      log(e.toString());
      throw Exception('opp there was error');
    }
  }
}
