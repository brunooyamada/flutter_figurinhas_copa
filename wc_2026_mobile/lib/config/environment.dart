final class Environment._() {
  static const baseUrl = String.fromEnvironment(
    'BASE_URL',
    defaultValue: 'http://192.168.56.1:8080/',
  );

  static String url(String path) => '$baseUrl$path';
  static String flagUrl(String code) => url('/flags/${code.toLowerCase()}.png');
}
