import 'package:flutter/material.dart';
import 'package:myproject/shared/component/component.dart';
import 'package:myproject/weatherscreen.dart';


class Search extends StatelessWidget {
  String? cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Search"
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextFormField(
            onFieldSubmitted: (value)async{
              cityName=value.toString();
              WeatherService weather=WeatherService();
              weatherData= await weather.getWeather(cityName!);
              Navigator.pop(context);
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(

                borderRadius: BorderRadius.circular(5),

              ),
              contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              suffixIcon: Icon(
                Icons.search_rounded,
              ),
              hintText: "Enter the name of the city",
              labelText: "search",
            ),

          ),
        ),
      ),
    );
  }
}
