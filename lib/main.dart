import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/Views/Home_View.dart';
import 'package:untitled/cubit/getcurrentWeather/getWeatherCUBIT.dart';

void main() {
  runApp(const WeatherAPP());
}

class WeatherAPP extends StatelessWidget {
  const WeatherAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCupit(),
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.orange),
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}
