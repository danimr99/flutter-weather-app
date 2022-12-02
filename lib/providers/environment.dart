import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class Environment {
  static String getApiKey() {
    final String? token = dotenv.env['API_KEY_TOKEN'];
    return token ?? "";
  }
}
