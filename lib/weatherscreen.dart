import 'dart:convert';
import 'package:http/http.dart' as http;
import 'models/weathermodel.dart';

class WeatherService{
  String baseUrl='http://api.weatherapi.com/v1';
  Future<WeatherModel> getWeather(String cityName)async{
    WeatherModel? weather;
    try {
      Uri url = Uri.parse(
          '$baseUrl/forecast.json?key=7df7dfd63c914e238d393638232102&q=$cityName&days=5');
      http.Response response = await http.get(url);
      Map<String, dynamic> weatherData = jsonDecode(response.body);
      weather = WeatherModel.FromJson(weatherData);
    }
    catch(error){
      print('this error ddd:${error.toString()} ');
    }
    return weather!;
  }
}