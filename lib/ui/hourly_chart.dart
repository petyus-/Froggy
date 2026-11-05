import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../models/weather.dart';

/// 24h hourly temperature band chart, overlaid at the top of the frog scene.
///
/// Band variant: one colored vertical band per hour from the temperature
/// line downwards (same color, ~35% opacity), colored dots on the line and a
/// thin white line connecting them. Labels above every point, hour numbers
/// below every 3rd point. Colors interpolate cold (blue) -> warm (yellow).
class HourlyChartStrip extends StatelessWidget {
  const HourlyChartStrip({super.key, required this.weather});

  final WeatherData? weather;

  @override
  Widget build(BuildContext context) {
    final w = weather;
    final temps = w?.hourlyTemps;
    if (w == null ||
        temps == null ||
        temps.length < 24 ||
        w.hourlyStartHour == null) {
      return const SizedBox.shrink();
    }
    final h = MediaQuery.sizeOf(context).height;
    final chartHeight = (h * 0.14).clamp(64.0, 120.0);
    return IgnorePointer(
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          color: const Color(0x59000000), // rgba(0,0,0,0.35)
          padding: const EdgeInsets.symmetric(vertical: 4),
          height: chartHeight,
          child: CustomPaint(
            size: Size.infinite,
            painter: _HourlyChartPainter(
              temps: temps.take(24).toList(),
              startHour: w.hourlyStartHour!,
            ),
          ),
        ),
      ),
    );
  }
}

class _HourlyChartPainter extends CustomPainter {
  _HourlyChartPainter({
    required this.temps,
    required this.startHour,
  });

  final List<double> temps;
  final int startHour;

  static const _cold = Color.fromARGB(255, 70, 140, 255);
  static const _warm = Color.fromARGB(255, 255, 200, 40);

  Color _colorFor(double t) {
    final min = temps.reduce(math.min);
    final max = temps.reduce(math.max);
    final f = (max - min) <= 0.001 ? 0.5 : (t - min) / (max - min);
    return Color.lerp(_cold, _warm, f.clamp(0.0, 1.0))!;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final n = temps.length;
    final min = temps.reduce(math.min);
    final max = temps.reduce(math.max);
    final range = (max - min) <= 0.001 ? 1.0 : (max - min);

    const labelFontSize = 10.0;
    const hourFontSize = 10.0;
    const topPad = labelFontSize + 5;
    const bottomPad = hourFontSize + 6;
    final lineTop = topPad.toDouble();
    final lineBottom = size.height - bottomPad;
    final dx = size.width / n;
    final midX = List<double>.generate(n, (i) => dx * (i + 0.5));
    final lineY = List<double>.generate(n, (i) {
      final f = (temps[i] - min) / range;
      return lineBottom - f * (lineBottom - lineTop);
    });

    // Bands from the line down to the bottom of the chart area.
    final bandPaint = Paint()..style = PaintingStyle.fill;
    for (var i = 0; i < n; i++) {
      bandPaint.color = _colorFor(temps[i]).withValues(alpha: 0.35);
      canvasRect(
        canvas,
        Rect.fromLTRB(midX[i] - dx / 2, lineY[i], midX[i] + dx / 2,
            size.height - bottomPad + 4),
        bandPaint,
      );
    }

    // Thin white line connecting points.
    final linePaint = Paint()
      ..color = Colors.white.withValues(alpha: 0.9)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;
    final path = Path();
    for (var i = 0; i < n; i++) {
      if (i == 0) {
        path.moveTo(midX[i], lineY[i]);
      } else {
        path.lineTo(midX[i], lineY[i]);
      }
    }
    canvas.drawPath(path, linePaint);

    // Dots on the line.
    final dotPaint = Paint();
    for (var i = 0; i < n; i++) {
      dotPaint.color = _colorFor(temps[i]);
      canvas.drawCircle(Offset(midX[i], lineY[i]), 2.5, dotPaint);
    }

    // Temperature labels above every point.
    final labelStyle = TextPainter(
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    );
    for (var i = 0; i < n; i++) {
      labelStyle.text = TextSpan(
        text: '${temps[i].round()}°',
        style: const TextStyle(
          color: Colors.white,
          fontSize: labelFontSize,
          fontWeight: FontWeight.bold,
        ),
      );
      labelStyle.layout();
      labelStyle.paint(
          canvas,
          Offset(
              midX[i] - labelStyle.width / 2, lineY[i] - labelStyle.height - 2));
    }

    // Hour labels below every 3rd point.
    final hourStyle = TextPainter(
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    );
    for (var i = 0; i < n; i += 3) {
      final hour = (startHour + i) % 24;
      hourStyle.text = TextSpan(
        text: '$hour',
        style: const TextStyle(
          color: Colors.white70,
          fontSize: hourFontSize,
          fontWeight: FontWeight.w600,
        ),
      );
      hourStyle.layout();
      hourStyle.paint(canvas,
          Offset(midX[i] - hourStyle.width / 2, size.height - hourFontSize - 1));
    }
  }

  void canvasRect(Canvas canvas, Rect rect, Paint paint) {
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant _HourlyChartPainter old) =>
      old.temps != temps || old.startHour != startHour;
}
