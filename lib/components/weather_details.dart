import 'package:flutter/material.dart';
import 'package:flutter_weather_app/components/weather_detail_item.dart';
import 'package:flutter_weather_app/constants/layout.dart';
import 'package:flutter_weather_app/models/weather_data.dart';

class WeatherDetails extends StatelessWidget {
  final WeatherData currentWeather;

  const WeatherDetails({
    Key? key,
    required this.currentWeather,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - kHorizontalMargin,
      height: MediaQuery.of(context).size.height / 15,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(64),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            WeatherDetailItem(
              title: "Wind",
              value: "${currentWeather.windSpeed.toString()} Km/h",
            ),
            const VerticalDivider(
              thickness: 1,
              color: Colors.white,
            ),
            WeatherDetailItem(
              title: "Humidity",
              value: "${currentWeather.humidity.toString()}%",
            ),
            const VerticalDivider(
              thickness: 1,
              color: Colors.white,
            ),
            WeatherDetailItem(
              title: "Pressure",
              value: "${currentWeather.pressure.toString()} Pa",
            ),
          ],
        ),
      ),
    );
  }
}
