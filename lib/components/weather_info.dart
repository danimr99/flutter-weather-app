import 'package:flutter/material.dart';
import 'package:flutter_weather_app/components/weather_image.dart';
import 'package:flutter_weather_app/constants/layout.dart';

import '../constants/typography.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPaddingAll),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 8,
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
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Minimum",
                    style: kCurrentEdgeTemperatureLabel
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 150,
                  ),
                  Text(
                    "17º",
                    style: kCurrentEdgeTemperature.copyWith(
                        color: Colors.blue
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Maximum",
                    style: kCurrentEdgeTemperatureLabel,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 150,
                  ),
                  Text(
                    "26º",
                    style: kCurrentEdgeTemperature.copyWith(
                        color: Colors.red
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
