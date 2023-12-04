class WeatherModel {
  final String cityName;
  final String date;
  final double temp;
  final double maxTemp;
  final double miniTemp;
  final String? image;
  final String WeatherCondtion;
  WeatherModel(
      {required this.WeatherCondtion,
      required this.image,
      required this.cityName,
      required this.date,
      required this.maxTemp,
      required this.miniTemp,
      required this.temp});
  factory WeatherModel.fromJson(json) {
    return WeatherModel(
        cityName: json['location']['name'],
        date: json['current']['last_updated'],
        maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        miniTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
        WeatherCondtion: json['forecast']['forecastday'][0]['day']['condition']
            ['text'],
        image: json['forecast']['forecastday'][0]['day']['condition']['icon']);
  }
}
