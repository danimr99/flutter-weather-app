import 'package:flutter/material.dart';
import 'package:flutter_weather_app/constants/layout.dart';

import 'forecast_item.dart';

class Forecast extends StatelessWidget {
  const Forecast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPaddingAll),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 5,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          separatorBuilder: (BuildContext context, int index) {
            return ForecastItem();
          },
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 200,
              height: 100,
              child: Container(
                color: Colors.blue,
              ),
            );
          },
        ),
      ),
    );
  }
}


