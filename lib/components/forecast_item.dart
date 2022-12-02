import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_weather_app/constants/layout.dart';
import 'package:flutter_weather_app/constants/typography.dart';
import 'package:flutter_weather_app/components/weather_image.dart';
import 'package:flutter_weather_app/models/forecast_data.dart';
import 'package:flutter_weather_app/providers/weather_image.dart';

class ForecastItem extends StatelessWidget {
  final ForecastDataItem item;

  const ForecastItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  String _setLocaleDatetime(DateTime dateTime) {
    DateFormat formatter = DateFormat.yMMMMd();
    return formatter.format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 15,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(kRoundedCornerRadius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            WeatherImage(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.height,
              image:
                  "assets/images/${WeatherImageProvider.getWeatherImage(item.description)}.png",
            ),
            Text(
              // TODO: Fix format => "6 Oct 06:00",
              _setLocaleDatetime(item.datetime),
              style: kForecastDatetime,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${item.minTemperature.toString()}º",
                  style: kCurrentEdgeTemperature.copyWith(color: Colors.blue),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 15,
                ),
                Text(
                  "${item.maxTemperature.toString()}º",
                  style: kCurrentEdgeTemperature.copyWith(color: Colors.red),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
