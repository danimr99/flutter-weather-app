import 'package:flutter/material.dart';
import 'package:flutter_weather_app/constants/layout.dart';

class Forecast extends StatelessWidget {
  const Forecast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPaddingAll),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 5,
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}
