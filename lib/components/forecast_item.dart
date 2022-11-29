import 'package:flutter/material.dart';
import 'package:flutter_weather_app/components/weather_image.dart';

import '../constants/layout.dart';
import '../constants/typography.dart';

class ForecastItem extends StatelessWidget {
  const ForecastItem({
    Key? key,
  }) : super(key: key);

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
              image: "assets/images/windy.png",
            ),
            const Text(
              "6 Oct 06:00",
              style: kForecastDatetime,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "17º",
                  style: kCurrentEdgeTemperature.copyWith(
                      color: Colors.blue
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 15,
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
        ),
      ),
    );
  }
}
