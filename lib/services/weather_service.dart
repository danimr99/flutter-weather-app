import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_weather_app/providers/environment.dart';
import 'package:flutter_weather_app/models/weather_data.dart';
import 'package:flutter_weather_app/models/forecast_data.dart';

class WeatherService {
  final String baseUrl =
      "https://api.openweathermap.org/data/2.5/API_SECTION_MODE?units=metric&appid=API_KEY_TOKEN&q=";

  String formatUrl(String mode, String apiKey, String query) {
    final String url = baseUrl
        .replaceAll("API_SECTION_MODE", mode)
        .replaceAll("API_KEY_TOKEN", apiKey);

    return url + query;
  }

  Future<WeatherData> getCurrentWeather(String city, String countryCode) async {
    String url =
        formatUrl("weather", Environment.getApiKey(), "$city,$countryCode");
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);

      final WeatherData weatherData = WeatherData(
          description: json["weather"][0]["main"],
          temperature: json["main"]["temp"] as num,
          minTemperature: json["main"]["temp_min"] as num,
          maxTemperature: json["main"]["temp_max"] as num,
          windSpeed: json["wind"]["speed"],
          pressure: json["main"]["pressure"],
          humidity: json["main"]["humidity"]);

      return weatherData;
    } else {
      throw Exception("Error: Cannot get current weather data.");
    }
  }

  Future<ForecastData> getForecast(String city, String countryCode) async {
    String url =
        formatUrl("forecast", Environment.getApiKey(), "$city,$countryCode");
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);

      List<ForecastDataItem> forecast = [];

      json["list"].forEach((item) {
        forecast.add(ForecastDataItem(
            description: item["weather"][0]["main"],
            temperature: item["main"]["temp"] as num,
            minTemperature: item["main"]["temp_min"] as num,
            maxTemperature: item["main"]["temp_max"] as num,
            datetime: DateTime.parse(item["dt_txt"])));
      });

      final ForecastData forecastData = ForecastData(forecast: forecast);

      return forecastData;
    } else {
      throw Exception("Error: Cannot get forecast weather data.");
    }
  }
}
