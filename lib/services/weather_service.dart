import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/weather.dart';

class WeatherService {
  WeatherService({http.Client? client}) : _client = client ?? http.Client();

  final http.Client _client;
  static const _base = 'https://api.open-meteo.com/v1/forecast';

  Future<WeatherData> fetch(double lat, double lon) async {
    final uri = Uri.parse(_base).replace(queryParameters: {
      'latitude': lat.toStringAsFixed(4),
      'longitude': lon.toStringAsFixed(4),
      'current': 'weather_code,temperature_2m',
      'daily':
          'weather_code,temperature_2m_max,temperature_2m_min,sunrise,sunset',
      'hourly': 'temperature_2m',
      'timezone': 'auto',
      'forecast_days': '2',
    });

    final resp = await _client.get(uri).timeout(const Duration(seconds: 15));
    if (resp.statusCode != 200) {
      throw WeatherException('Open-Meteo returned HTTP ${resp.statusCode}');
    }

    final body = jsonDecode(resp.body) as Map<String, dynamic>;
    final current = body['current'] as Map<String, dynamic>?;
    if (current == null) {
      throw const WeatherException('No current weather in response');
    }

    final daily = body['daily'] as Map<String, dynamic>?;
    final code = (current['weather_code'] as num).toInt();
    final hourly = _hourlyFromNow(
      body['hourly'] as Map<String, dynamic>?,
      utcOffsetSeconds: (body['utc_offset_seconds'] as num?)?.toInt(),
    );
    return WeatherData(
      condition: conditionFromWmo(code),
      weatherCode: code,
      temperatureC: (current['temperature_2m'] as num).toDouble(),
      tempMaxC: _firstNum(daily?['temperature_2m_max']),
      tempMinC: _firstNum(daily?['temperature_2m_min']),
      sunrise: _firstDate(daily?['sunrise']),
      sunset: _firstDate(daily?['sunset']),
      utcOffsetSeconds: (body['utc_offset_seconds'] as num?)?.toInt(),
      hourlyTemps: hourly?.$1,
      hourlyStartHour: hourly?.$2,
      fetchedAt: DateTime.now(),
    );
  }

  /// Returns 24 hourly temperatures starting at the current local hour,
  /// plus the starting hour-of-day. Null when data is unavailable.
  static (List<double>, int)? _hourlyFromNow(
    Map<String, dynamic>? hourly, {
    int? utcOffsetSeconds,
  }) {
    if (hourly == null) return null;
    final times = hourly['time'];
    final temps = hourly['temperature_2m'];
    if (times is! List || temps is! List || times.isEmpty) return null;
    final n = times.length < temps.length ? times.length : temps.length;
    final off = utcOffsetSeconds ?? 0;
    // Wall-clock time at the location (hourly timestamps from Open-Meteo
    // with timezone=auto are location-local, offset-naive strings).
    final wall = DateTime.now().toUtc().add(Duration(seconds: off));
    int best = -1;
    int bestDelta = 1 << 60;
    for (var i = 0; i < n; i++) {
      final t = DateTime.tryParse(times[i] as String);
      if (t == null) return null;
      final delta =
          ((t.hour * 60 + t.minute) - (wall.hour * 60 + wall.minute)).abs();
      if (delta < bestDelta) {
        bestDelta = delta;
        best = i;
      }
    }
    if (best < 0 || bestDelta > 90) return null;
    final values = <double>[];
    for (var i = best; i < n && values.length < 24; i++) {
      final v = temps[i];
      if (v is num) values.add(v.toDouble());
    }
    if (values.length < 24) return null;
    return (values, wall.hour);
  }

  static DateTime? _firstDate(Object? list) {
    if (list is List && list.isNotEmpty && list.first is String) {
      final d = DateTime.tryParse(list.first as String);
      if (d == null) return null;
      return DateTime.utc(d.year, d.month, d.day, d.hour, d.minute, d.second);
    }
    return null;
  }

  static double? _firstNum(Object? list) {
    if (list is List && list.isNotEmpty && list.first is num) {
      return (list.first as num).toDouble();
    }
    return null;
  }

  void dispose() => _client.close();
}

class WeatherException implements Exception {
  final String message;
  const WeatherException(this.message);
  @override
  String toString() => 'WeatherException: $message';
}
