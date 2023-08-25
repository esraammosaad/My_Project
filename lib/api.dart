import 'package:flutter/material.dart';
import 'package:myproject/search.dart';
import 'package:myproject/shared/component/component.dart';


class WeatherApp extends StatefulWidget {

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Search())).then((value) {
              setState(() {

              });
            });
          },
              icon: const Icon(
                Icons.search_rounded,
              )
          )
        ],
      ),
      body: weatherData == null? weatherWithoutData() : weatherWithdata(weatherData!),
    );
  }
}
