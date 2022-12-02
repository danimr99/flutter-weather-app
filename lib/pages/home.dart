import 'package:flutter/material.dart';
import 'package:flutter_weather_app/constants/colors.dart';
import 'package:flutter_weather_app/constants/typography.dart';
import 'package:flutter_weather_app/models/forecast_data.dart';
import 'package:flutter_weather_app/models/weather_data.dart';
import 'package:flutter_weather_app/services/weather_service.dart';
import 'package:flutter_weather_app/components/forecast.dart';
import 'package:flutter_weather_app/components/weather_details.dart';
import 'package:flutter_weather_app/components/weather_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherService service = WeatherService();
  String city = "Barcelona";
  String country = "Spain";
  String countryCode = "es";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: Text("$city, $country"),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: FutureBuilder(
        future: Future.wait([
          service.getCurrentWeather(city, countryCode),
          service.getForecast(city, countryCode)
        ]),
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          if (snapshot.hasError) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.warning,
                  size: 64,
                  color: Colors.white.withOpacity(0.1),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25,
                ),
                const Text(
                  "An error has occurred while connecting to the server.",
                  style: kThinLabel,
                  textAlign: TextAlign.center,
                ),
              ],
            );
          }

          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final WeatherData weatherData = snapshot.data![0];
          final ForecastData forecastData = snapshot.data![1];

          return SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                WeatherInfo(
                  currentWeather: weatherData,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                WeatherDetails(
                  currentWeather: weatherData,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Forecast(
                  forecastWeather: forecastData,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
