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
//     // return SafeArea(
//     //   child: Scaffold(
//     //     body: Container(
//     //       color: Colors.grey[100],
//     //       height:300,
//     //       width:300,
//     //       child: _LineChart(),
//     //     ),
//     //   ),
//     // );
//     // return SafeArea(
//     //   child: Scaffold(
//     //     body: LineChartSample1(),
//     //   ),
//     // );
//   }
// }

// class _LineChart extends StatelessWidget {
//   // const _LineChart({required this.isShowingMainData});

//   // final bool isShowingMainData;

//   @override
//   Widget build(BuildContext context) {
//     return LineChart(
//       sampleData2,
//       swapAnimationDuration: const Duration(milliseconds: 250),
//     );
//   }

//   LineChartData get sampleData2 => LineChartData(
//         lineTouchData: lineTouchData2,
//         gridData: gridData,
//         titlesData: titlesData,
//         borderData: borderData,
//         lineBarsData: lineBarsData2,
//         minX: 0,
//         maxX: 14,
//         maxY: 6,
//         minY: 0,
//       );

//   LineTouchData get lineTouchData2 => LineTouchData(
//         enabled: false,
//       );

//   FlTitlesData get titlesData => FlTitlesData(
//         bottomTitles: SideTitles(showTitles: false),
//         rightTitles: SideTitles(showTitles: false),
//         topTitles: SideTitles(showTitles: false),
//         leftTitles: SideTitles(showTitles: false),
//       );

//   List<LineChartBarData> get lineBarsData2 => [
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

// class LineChartSample1 extends StatefulWidget {
//   const LineChartSample1({Key? key}) : super(key: key);

//   @override
//   State<StatefulWidget> createState() => LineChartSample1State();
// }

// class LineChartSample1State extends State<LineChartSample1> {
//   late bool isShowingMainData;

//   @override
//   void initState() {
//     super.initState();
//     isShowingMainData = true;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: 1.23,
//       child: Container(
//         decoration: const BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(18)),
//           gradient: LinearGradient(
//             colors: [
//               Color(0xff2c274c),
//               Color(0xff46426c),
//             ],
//             begin: Alignment.bottomCenter,
//             end: Alignment.topCenter,
//           ),
//         ),
//         child: Stack(
//           children: <Widget>[
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 const SizedBox(
//                   height: 37,
//                 ),
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.only(right: 16.0, left: 6.0),
//                     child: _LineChart(),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
