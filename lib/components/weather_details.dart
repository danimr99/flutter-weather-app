import 'package:flutter/material.dart';
import 'package:flutter_weather_app/components/weather_detail_item.dart';
import 'package:flutter_weather_app/constants/layout.dart';

class WeatherDetails extends StatelessWidget {
  const WeatherDetails({Key? key}) : super(key: key);

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
          children: const <Widget>[
            WeatherDetailItem(
              title: "Wind",
              value: "120 Km/h",
            ),
            VerticalDivider(
              thickness: 1,
              color: Colors.white,
            ),
            WeatherDetailItem(
              title: "Humidity",
              value: "32%",
            ),
            VerticalDivider(
              thickness: 1,
              color: Colors.white,
            ),
            WeatherDetailItem(
              title: "Pressure",
              value: "1.3 Pa",
            ),
          ],
        ),
      ),
    );
  }
}
