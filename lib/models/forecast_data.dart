class ForecastData {
  final List<ForecastDataItem> forecast;

  ForecastData({
    required this.forecast,
  });
}

class ForecastDataItem {
  final String description;
  final num temperature;
  final num minTemperature;
  final num maxTemperature;
  final DateTime datetime;

  ForecastDataItem({
    required this.description,
    required this.temperature,
    required this.minTemperature,
    required this.maxTemperature,
    required this.datetime,
  });
}
