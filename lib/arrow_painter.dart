import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class FlDotArrowUpPainter extends FlDotPainter {
  Color color;
  double size;
  double width;

  FlDotArrowUpPainter({
    Color? color,
    double? size,
    double? width,
  })  : color = color ?? Colors.green,
        size = size ?? 8.0,
        width = width ?? 1.0;

  @override
  void draw(Canvas canvas, FlSpot spot, Offset offsetInCanvas) {
    final path = Path()
      ..moveTo(offsetInCanvas.dx, offsetInCanvas.dy)
      ..relativeLineTo(size, size)
      ..relativeLineTo(-size, 0)
      ..relativeLineTo(-size, 0)
      ..close();

    final paint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = width
      ..color = color;

    canvas.drawPath(path, paint);
  }

  @override
  Size getSize(FlSpot spot) {
    return Size(size, size);
  }

  @override
  List<Object?> get props => [
        color,
        size,
        width,
      ];
}

class FlDotArrowDownPainter extends FlDotPainter {
  Color color;
  double size;
  double width;

  FlDotArrowDownPainter({
    Color? color,
    double? size,
    double? width,
  })  : color = color ?? Colors.red,
        size = size ?? 8.0,
        width = width ?? 1.0;

  @override
  void draw(Canvas canvas, FlSpot spot, Offset offsetInCanvas) {
    final path = Path()
      ..moveTo(offsetInCanvas.dx, offsetInCanvas.dy)
      ..relativeLineTo(size, -size)
      ..relativeLineTo(-size, 0)
      ..relativeLineTo(-size, 0)
      ..close();

    final paint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = width
      ..color = color;

    canvas.drawPath(path, paint);
  }

  @override
  Size getSize(FlSpot spot) {
    return Size(size, size);
  }

  @override
  List<Object?> get props => [
        color,
        size,
        width,
      ];
}