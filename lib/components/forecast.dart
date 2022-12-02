import 'package:flutter/material.dart';
import 'package:flutter_weather_app/constants/layout.dart';
import 'package:flutter_weather_app/constants/typography.dart';
import 'package:flutter_weather_app/models/forecast_data.dart';
import 'package:flutter_weather_app/components/forecast_item.dart';

class Forecast extends StatelessWidget {
  final ForecastData forecastWeather;

  const Forecast({
    Key? key,
    required this.forecastWeather,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPaddingAll),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Weekly forecast",
            style: kSectionTitle,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.2,
            child: SafeArea(
              child: ListView.separated(
                itemCount: forecastWeather.forecast.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: kThicknessDivider,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return ForecastItem(
                    item: forecastWeather.forecast[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
