import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather/weather.dart';

class homeContent extends StatefulWidget {
  const homeContent({Key? key}) : super(key: key);

  @override
  State<homeContent> createState() => _HomeContent();
}

class _HomeContent extends State<homeContent> {
  WeatherFactory wf = WeatherFactory("7f57497d63748a8dad533be2d3b6e23c",
      language: Language.ENGLISH);


  @override
  Widget build(BuildContext context) {



    return ListView(
      children: [
        Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.fromLTRB(0, 100, 0, 30),
            child: Text(
              "70°",
              style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w900,
                  fontSize: 50),
            )),
        Container(
            alignment: Alignment.topCenter,
            child: Text("68° / 80°" ,
                style: const TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w300,
                    fontSize: 30)))
      ],
    );
  }
}
