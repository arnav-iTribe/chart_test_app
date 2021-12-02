import 'package:flutter/material.dart';

class SideArrowClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.8644636, size.height * 0.1688314);
    path.cubicTo(size.width * 0.8232927, size.height * 0.06100545,
        size.width * 0.7662655, 0, size.width * 0.7066400, 0);
    path.lineTo(size.width * 0.2000000, 0);
    path.cubicTo(size.width * 0.08954309, 0, 0, size.height * 0.2238577, 0,
        size.height * 0.5000000);
    path.lineTo(0, size.height * 0.5000000);
    path.cubicTo(0, size.height * 0.7761409, size.width * 0.08954309,
        size.height, size.width * 0.2000000, size.height);
    path.lineTo(size.width * 0.7066400, size.height);
    path.cubicTo(
        size.width * 0.7662655,
        size.height,
        size.width * 0.8232927,
        size.height * 0.9389955,
        size.width * 0.8644636,
        size.height * 0.8311682);
    path.lineTo(size.width * 0.9909091, size.height * 0.5000000);
    path.lineTo(size.width * 0.8644636, size.height * 0.1688314);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}