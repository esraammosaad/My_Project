import 'package:flutter/material.dart';
import '../../models/weathermodel.dart';

WeatherModel? weatherData;

Widget weatherWithoutData(){
  return const Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          height: 200,
          width: 200,
          fit:BoxFit.cover ,
          image: NetworkImage(
              'https://cdn2.iconfinder.com/data/icons/weather-flat-14/64/weather02-512.png'
          ),
        ),
        SizedBox(height: 15,),
        Text("Please search for weather",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,

          ),
        ),
      ],
    ),
  );
}

Widget weatherWithdata(WeatherModel weather){
  return Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("${weather.cityName}",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 10,),
        Text("Last updated: ${weather.date}",

        ),
        const SizedBox(height: 10,),
        Text("${weather.avgtemp}",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              // fit: BoxFit.cover,
              //   height: 100,
              //  width: 100,
              image:
              NetworkImage(
                  '${weather.icon}'
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Max: ${weather.maxtemp}",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text("Min: ${weather.mintemp}",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 10,),
        Text("${weather.state}",
          style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    ),
  ) ;
}