// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const Home(),
//     );
//   }
// }

// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Container(
//           color: Colors.grey[100],
//           height: 300,
//           width: 300,
//           child: _LineChart(),
//         ),
//       ),
//     );
//   }
// }

// class _LineChart extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return LineChart(
//       sampleData,
//       swapAnimationDuration: const Duration(milliseconds: 250),
//     );
//   }

//   LineChartData get sampleData => LineChartData(
//         lineTouchData: lineTouchData,
//         gridData: gridData,
//         titlesData: titlesData,
//         borderData: borderData,
//         lineBarsData: lineBarsData,
//         minX: 0,
//         maxX: 14,
//         maxY: 6,
//         minY: 0,
//       );

//   LineTouchData get lineTouchData => LineTouchData(
//         enabled: false,
//       );

//   FlTitlesData get titlesData => FlTitlesData(
//         bottomTitles: SideTitles(showTitles: false),
//         rightTitles: SideTitles(showTitles: false),
//         topTitles: SideTitles(showTitles: false),
//         leftTitles: SideTitles(showTitles: false),
//       );

//   List<LineChartBarData> get lineBarsData => [
//         lineChartBarData2_1,
//       ];

//   FlGridData get gridData => FlGridData(show: false);

//   FlBorderData get borderData => FlBorderData(
//         show: true,
//         border: const Border(
//           bottom: BorderSide(color: Color(0xff4e4965), width: 4),
//           left: BorderSide(color: Colors.transparent),
//           right: BorderSide(color: Colors.transparent),
//           top: BorderSide(color: Colors.transparent),
//         ),
//       );

//   LineChartBarData get lineChartBarData2_1 => LineChartBarData(
//         isCurved: true,
//         curveSmoothness: 0,
//         colors: const [Color(0x444af699)],
//         barWidth: 4,
//         isStrokeCapRound: true,
//         dotData: FlDotData(show: false),
//         belowBarData: BarAreaData(show: false),
//         spots: const [
//           FlSpot(1, 1),
//           FlSpot(3, 4),
//           FlSpot(5, 1.6),
//           FlSpot(7, 5),
//           FlSpot(10, 2),
//           FlSpot(12, 2.2),
//           FlSpot(13, 1.8),
//         ],
//       );
// }
