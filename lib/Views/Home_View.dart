import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/Views/Search_View.dart';
import 'package:untitled/Views/WeatherinfoBody.dart';
import 'package:untitled/Views/noweatherbody.dart';
import 'package:untitled/cubit/getcurrentWeather/getWeatherCUBIT.dart';

import '../cubit/getcurrentWeather/state_get_weather.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'weatherAPP',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return SearchView();
                  }));
                },
                icon: Icon(Icons.search))
          ],
        ),
        body: BlocBuilder<GetWeatherCupit, WeatherState>(
          builder: (context, state) {
            if (state is WeatherinitialState) {
              return Noweatherbody();
            } else if (state is WeattherLoadedState) {
              return WeatherInfoBody(weatherModel: state.weathermodel);
            } else {
              return Text('OPPS');
            }
          },
        ));
  }
}
