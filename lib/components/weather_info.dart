import 'package:flutter/material.dart';
import 'package:flutter_weather_app/components/weather_image.dart';
import 'package:flutter_weather_app/constants/layout.dart';
import 'package:flutter_weather_app/constants/typography.dart';
import 'package:flutter_weather_app/models/weather_data.dart';
import 'package:flutter_weather_app/providers/weather_image.dart';

class WeatherInfo extends StatelessWidget {
  final WeatherData currentWeather;

  const WeatherInfo({
    Key? key,
    required this.currentWeather,
  }) : super(key: key);

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
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height,
                  image:
                      "assets/images/${WeatherImageProvider.getWeatherImage(currentWeather.description)}.png",
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 25,
                ),
                Text(
                  "${currentWeather.temperature.toStringAsFixed(1)}º",
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
                  const Text("Minimum", style: kThinLabel),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 150,
                  ),
                  Text(
                    "${currentWeather.minTemperature.toStringAsFixed(1)}º",
                    style: kCurrentEdgeTemperature.copyWith(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Maximum",
                    style: kThinLabel,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 150,
                  ),
                  Text(
                    "${currentWeather.maxTemperature.toStringAsFixed(1)}º",
                    style: kCurrentEdgeTemperature.copyWith(
                      color: Colors.red,
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
