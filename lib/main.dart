import 'package:flutter/material.dart';
import 'package:chart_try/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'chart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ChartWidget(),
    );
  }
}
