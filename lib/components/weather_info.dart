import 'package:flutter/material.dart';
import 'package:flutter_weather_app/constants/layout.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - kHorizontalMargin,
      height: MediaQuery.of(context).size.height / 4,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white
        ),
      ),
    );
  }
}
