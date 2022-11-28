import 'package:flutter/material.dart';
import 'package:flutter_weather_app/components/weather_image.dart';
import 'package:flutter_weather_app/constants/layout.dart';

import '../constants/typography.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - kHorizontalMargin,
      height: MediaQuery.of(context).size.height / 6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WeatherImage(
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height,
            image: "assets/images/sunny.png",
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 15,
          ),
          const Text(
            "23º",
            style: kCurrentTemperature,
          ),
        ],
      ),
    );
  }
}
