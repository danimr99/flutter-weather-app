import 'package:flutter/material.dart';
import 'package:flutter_weather_app/constants/layout.dart';

class WeatherImage extends StatelessWidget {
  const WeatherImage({
    Key? key,
    required this.width,
    required this.height,
    required this.image,
  }) : super(key: key);

  final double width;
  final double height;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Padding(
        padding: const EdgeInsets.all(kPaddingAll),
        child: Image.asset(image),
      ),
    );
  }
}
