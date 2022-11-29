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
  String city = "Barcelona";
  String country = "Spain";
  String countryCode = "es";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: Text("$city, $country"),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            const WeatherInfo(),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            const WeatherDetails(),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            const Forecast(),
          ],
        ),
      ),
    );
  }
}
