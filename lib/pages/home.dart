import 'package:flutter/material.dart';
import 'package:flutter_weather_app/constants/colors.dart';

import '../components/forecast.dart';
import '../components/weather_details.dart';
import '../components/weather_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: const Text("Barcelona"),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: const [
          WeatherInfo(),
          WeatherDetails(),
          Forecast()
        ],
      ),
    );
  }
}
