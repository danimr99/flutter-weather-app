import 'package:flutter/material.dart';
import 'package:flutter_weather_app/constants/layout.dart';

import '../constants/typography.dart';
import 'forecast_item.dart';

class Forecast extends StatelessWidget {
  const Forecast({Key? key}) : super(key: key);

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
            child: ListView.separated(
              itemCount: 14,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: kThicknessDivider,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                return const ForecastItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}
