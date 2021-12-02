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
//         lineTouchData: LineTouchData(enabled: false),
//         gridData: FlGridData(show: false),
//         titlesData: FlTitlesData(show: false),
//         borderData: FlBorderData(show: false),
//         lineBarsData: lineBarsData,
//         extraLinesData: ExtraLinesData(
//           horizontalLines: [
//             HorizontalLine(
//               y: 2,
//               strokeWidth: 1,
//               color: Colors.pink,
//               label: HorizontalLineLabel(
//                 show: true,
//                 labelResolver: (d) => 'horizontal line1',
//                 // style: kCaption1,
//               ),
//             ),
//             HorizontalLine(
//               y: 4,
//               strokeWidth: 1,
//               color: Colors.black,
//               label: HorizontalLineLabel(
//                 show: true,
//                 // alignment: plot.maxY == widget.targetPrice
//                 //     ? Alignment.bottomLeft
//                 //     : Alignment.topLeft,
//                 labelResolver: (d) => 'horizontal line2',
//                 // style: kCaption1,
//               ),
//             ),
//           ],
//           verticalLines: [
//             VerticalLine(
//               x: 4,
//               color: Colors.yellow,
//               label: VerticalLineLabel(
//                 show: true,
//                 // alignment: prewardAlign,
//                 labelResolver: (d) => 'vertical line 1',
//                 // style: kCaption1,
//               ),
//             ),
//             VerticalLine(
//               x: 12,
//               color: Colors.green,
//               label: VerticalLineLabel(
//                 show: true,
//                 // alignment: rewardAlign,
//                 labelResolver: (d) => 'vertical line 2',
//                 // style: kCaption1,
//               ),
//             ),
//           ],
//         ),
//         minX: 0,
//         maxX: 14,
//         maxY: 6,
//         minY: 0,
//       );
      

//   List<LineChartBarData> get lineBarsData => [
//         lineChartBarData,
//       ];

//   LineChartBarData get lineChartBarData => LineChartBarData(
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
