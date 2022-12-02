class WeatherData {
  final String description;
  final num temperature;
  final num minTemperature;
  final num maxTemperature;
  final num windSpeed;
  final int pressure;
  final int humidity;

  WeatherData({
    required this.description,
    required this.temperature,
    required this.minTemperature,
    required this.maxTemperature,
    required this.windSpeed,
    required this.pressure,
    required this.humidity,
  });
}
