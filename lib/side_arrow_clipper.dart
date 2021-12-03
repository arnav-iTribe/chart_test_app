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

class CallWidgetClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path callWidgetPath = Path();
    callWidgetPath.moveTo(size.width * 0.1334408, size.height * 0.1680193);
    callWidgetPath.lineTo(size.width * 0.1334406, size.height * 0.1680196);
    callWidgetPath.lineTo(size.width * 0.05272792, size.height * 0.3540100);
    callWidgetPath.cubicTo(
        size.width * 0.02992698,
        size.height * 0.4065500,
        size.width * 0.01852655,
        size.height * 0.4328214,
        size.width * 0.01426934,
        size.height * 0.4621429);
    callWidgetPath.cubicTo(
        size.width * 0.01067202,
        size.height * 0.4869214,
        size.width * 0.01067202,
        size.height * 0.5130786,
        size.width * 0.01426934,
        size.height * 0.5378571);
    callWidgetPath.cubicTo(
        size.width * 0.01852655,
        size.height * 0.5671786,
        size.width * 0.02992698,
        size.height * 0.5934500,
        size.width * 0.05272774,
        size.height * 0.6459893);
    callWidgetPath.lineTo(size.width * 0.1334406, size.height * 0.8319786);
    callWidgetPath.lineTo(size.width * 0.1334409, size.height * 0.8319821);
    callWidgetPath.cubicTo(
        size.width * 0.1605125,
        size.height * 0.8943643,
        size.width * 0.1740485,
        size.height * 0.9255536,
        size.width * 0.1907679,
        size.height * 0.9478536);
    callWidgetPath.cubicTo(
        size.width * 0.2049698,
        size.height * 0.9667893,
        size.width * 0.2207906,
        size.height * 0.9809464,
        size.width * 0.2375377,
        size.height * 0.9896964);
    callWidgetPath.cubicTo(size.width * 0.2572528, size.height, size.width * 0.2785774,
        size.height, size.width * 0.3212283, size.height);
    callWidgetPath.lineTo(size.width * 0.8772981, size.height);
    callWidgetPath.cubicTo(size.width * 0.9202792, size.height, size.width * 0.9417679,
        size.height, size.width * 0.9581264, size.height * 0.9839179);
    callWidgetPath.cubicTo(
        size.width * 0.9719113,
        size.height * 0.9703643,
        size.width * 0.9831509,
        size.height * 0.9490893,
        size.width * 0.9903113,
        size.height * 0.9229964);
    callWidgetPath.cubicTo(
        size.width * 0.9988075,
        size.height * 0.8920321,
        size.width * 0.9988075,
        size.height * 0.8513571,
        size.width * 0.9988075,
        size.height * 0.7700000);
    callWidgetPath.lineTo(size.width * 0.9988075, size.height * 0.2300000);
    callWidgetPath.cubicTo(
        size.width * 0.9988075,
        size.height * 0.1486443,
        size.width * 0.9988075,
        size.height * 0.1079664,
        size.width * 0.9903113,
        size.height * 0.07700357);
    callWidgetPath.cubicTo(
        size.width * 0.9831509,
        size.height * 0.05091179,
        size.width * 0.9719113,
        size.height * 0.02963743,
        size.width * 0.9581264,
        size.height * 0.01608379);
    callWidgetPath.cubicTo(size.width * 0.9417679, 0, size.width * 0.9202792, 0,
        size.width * 0.8772981, 0);
    callWidgetPath.lineTo(size.width * 0.3212283, 0);
    callWidgetPath.cubicTo(size.width * 0.2785774, 0, size.width * 0.2572528, 0,
        size.width * 0.2375377, size.height * 0.01030193);
    callWidgetPath.cubicTo(
        size.width * 0.2207906,
        size.height * 0.01905239,
        size.width * 0.2049698,
        size.height * 0.03320900,
        size.width * 0.1907679,
        size.height * 0.05214821);
    callWidgetPath.cubicTo(
        size.width * 0.1740483,
        size.height * 0.07444536,
        size.width * 0.1605125,
        size.height * 0.1056368,
        size.width * 0.1334408,
        size.height * 0.1680193);
    callWidgetPath.close();
    callWidgetPath.moveTo(size.width * 0.2157943, size.height * 0.6071429);
    callWidgetPath.cubicTo(
        size.width * 0.2470566,
        size.height * 0.6071429,
        size.width * 0.2723981,
        size.height * 0.5591750,
        size.width * 0.2723981,
        size.height * 0.5000000);
    callWidgetPath.cubicTo(
        size.width * 0.2723981,
        size.height * 0.4408250,
        size.width * 0.2470566,
        size.height * 0.3928571,
        size.width * 0.2157943,
        size.height * 0.3928571);
    callWidgetPath.cubicTo(
        size.width * 0.1845336,
        size.height * 0.3928571,
        size.width * 0.1591913,
        size.height * 0.4408250,
        size.width * 0.1591913,
        size.height * 0.5000000);
    callWidgetPath.cubicTo(
        size.width * 0.1591913,
        size.height * 0.5591750,
        size.width * 0.1845336,
        size.height * 0.6071429,
        size.width * 0.2157943,
        size.height * 0.6071429);
    callWidgetPath.close();
    return callWidgetPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
