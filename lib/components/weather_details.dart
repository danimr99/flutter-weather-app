import 'package:flutter/material.dart';
import 'package:flutter_weather_app/constants/layout.dart';

class WeatherDetails extends StatelessWidget {
  const WeatherDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - kHorizontalMargin,
      height: MediaQuery.of(context).size.height / 6,
      child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(19, 255, 255, 255),
            borderRadius: BorderRadius.circular(1000),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                _accessoryWidget(context, "Wind:", "PH", Colors.transparent),
                const VerticalDivider(thickness: 1, color: Colors.white),
                _accessoryWidget(context, "Humidity:", "PH", Colors.transparent),
                const VerticalDivider(thickness: 1, color: Colors.white),
                _accessoryWidget(context, "Pressure:", "PH", Colors.transparent),
              ],
            ),
          )),
    );
  }

  _accessoryWidget(
      BuildContext context, String title, String value, Color color) {
    return Expanded(
      child: Container(
          color: color,
          height: MediaQuery.of(context).size.height / 6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Text(
                value,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          )),
    );
  }
}
