import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather/weather.dart';

class homeContent extends StatefulWidget {
  const homeContent({Key? key}) : super(key: key);

  static WeatherFactory wf = WeatherFactory("7f57497d63748a8dad533be2d3b6e23c",
      language: Language.ENGLISH);
  static late Weather w;

  static Future<void> getWeather() async {
    w = await wf.currentWeatherByCityName("South Venice");
    //27.05311, -82.424263
  }

  @override
  State<homeContent> createState() => _HomeContent();
}

class _HomeContent extends State<homeContent> {
  Weather w = homeContent.w;

  void updateWeatherMetrics(
      double? fahrenheit, double? tempM, double? tempm, double? cloud) {
    setState(() {
      degreesFahrenheit = fahrenheit;
      tempMax = tempM;
      tempMin = tempm;
      clouds = cloud;
    });
  }

  double? degreesFahrenheit = 0;
  double? tempMax = 0;
  double? tempMin = 0;
  double? clouds = 0;

  Widget build(BuildContext context) {
    updateWeatherMetrics(w!.temperature!.fahrenheit, w!.tempMax!.fahrenheit,
        w!.tempMin!.fahrenheit, w!.cloudiness);

    return ListView(
      children: [
        Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.fromLTRB(0, 40, 0, 30),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.thermostat_rounded , color: Colors.blue, size: 50,),
                Text(
                  degreesFahrenheit!.ceil().toString() + "°",
                  style: const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w900,
                      fontSize: 40),
                )
              ],
            )),
        Container(
            alignment: Alignment.topCenter,
            child: Text(
                "Min Temp: " +
                    tempMin!.ceil().toString() +
                    "° / Max Temp: " +
                    tempMax!.ceil().toString() +
                    "°",
                style: const TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w300,
                    fontSize: 25))),
        Container(
            alignment: Alignment.topCenter,
            child: Text(clouds!.toInt().toString() + "% Cloudiness",
                style: const TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w300,
                    fontSize: 25))),
      ],
    );
  }
}
