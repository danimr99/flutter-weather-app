import 'package:flutter/material.dart';
import 'package:flutter_weather_app/constants/layout.dart';

class ForecastItem extends StatelessWidget {
  const ForecastItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: kThicknessDivider,
      child: Container(
          color: Colors.white.withOpacity(0.1)
      ),
    );
  }
}