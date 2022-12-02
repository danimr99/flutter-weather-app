abstract class WeatherImageProvider {
  static String getWeatherImage(String description) {
    switch (description) {
      case "clear sky":
        return "sunny";
      case "few clouds":
      case "scattered clouds":
      case "broken clouds":
        return "cloudy";
      case "shower rain":
      case "rain":
        return "rainy";
      case "thunderstorm":
        return "storm";
      case "snow":
        return "snow";
      default:
        return "windy";
    }
  }
}
