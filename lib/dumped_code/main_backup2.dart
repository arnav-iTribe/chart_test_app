//backup after gradient added to graph and dot at last index added

// import 'package:chart_try/colors.dart';
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
//           body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         // mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const SizedBox(
//             height: 50,
//           ),
//           Text('for buy call'),
//           const SizedBox(
//             height: 50,
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16),
//             child: Container(
//               color: Colors.grey[300],
//               height: 300,
//               width: 300,
//               child: _LineChart(),
//             ),
//           ),
//         ],
//       )),
//     );
//   }
// }

// class _LineChart extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return LineChart(
//       LineChartData(
//         lineTouchData: LineTouchData(enabled: false),
//         gridData: FlGridData(show: false),
//         titlesData: FlTitlesData(show: false),
//         borderData: FlBorderData(show: false),
//         lineBarsData: lineBarData,
//         extraLinesData: ExtraLinesData(
//           horizontalLines: [
//             HorizontalLine(
//               y: 6,
//               strokeWidth: 1,
//               color: Colors.green,
//               label: HorizontalLineLabel(
//                 show: true,
//                 labelResolver: (d) => 'target price line',
//                 // style: kCaption1,
//               ),
//             ),
//             HorizontalLine(
//               y: 0,
//               strokeWidth: 1,
//               color: Colors.pink,
//               label: HorizontalLineLabel(
//                 show: true,
//                 // alignment: plot.maxY == widget.targetPrice
//                 //     ? Alignment.bottomLeft
//                 //     : Alignment.topLeft,
//                 labelResolver: (d) => 'stop loss line',
//                 // style: kCaption1,
//               ),
//             ),
//             HorizontalLine(
//               y: 3,
//               strokeWidth: 2,
//               color: Colors.white,
//               label: HorizontalLineLabel(
//                 show: true,
//                 // alignment: plot.maxY == widget.targetPrice
//                 //     ? Alignment.bottomLeft
//                 //     : Alignment.topLeft,
//                 labelResolver: (d) => 'call price line',
//                 // style: kCaption1,
//               ),
//             ),
//           ],
//         ),
//         minX: 0,
//         maxX: 14,
//         maxY: 6,
//         minY: 0,
//       ),
//     );
//   }

//   List<LineChartBarData> lineBarData = [
//     LineChartBarData(
//       spots: const [
//         FlSpot(1, 1),
//         FlSpot(3, 4),
//         FlSpot(5, 1.6),
//         FlSpot(7, 5),
//         FlSpot(10, 2),
//         FlSpot(12, 2.6),
//         FlSpot(13, 4),
//       ],
//       isCurved: false,
//       colors: blackGradientColors,
//       barWidth: 3,
//       curveSmoothness: 0.5,
//       isStrokeCapRound: true,
//       // dotData: FlDotData(show: false),
//       dotData: FlDotData(
//         // checkToShowDot: (spot, barData) {
//         //   return ;
//         // },
//         getDotPainter: (spot, percent, barData, index) {
//           //index should be at the ltp
//           if(index== 6) {
//             return FlDotCirclePainter(
//             radius: 3,
//             color: Colors.green,
//             strokeWidth: 4,
//             strokeColor: Colors.white,
//           );
//           }
//           else{
//             return FlDotCirclePainter(
//             radius: 0,
//             color: Colors.transparent,
//             strokeWidth: 0,
//             strokeColor: Colors.transparent,
//           );

//           }
          
//         },
//       ),
//       belowBarData: BarAreaData(show: false),
//     ),
//     ...[
//       ///
//       /// [LTP dashed line]
//       ///
//       LineChartBarData(
//         spots: const [
//           //x should be from minX to maxX and y should be at ltp
//           FlSpot(0, 4),
//           FlSpot(14, 4),
//         ],
//         dashArray: [3, 4],
//         colors: const [Color(0x444af699)],
//         barWidth: 2,
//         isStrokeCapRound: false,
//         dotData: FlDotData(
//           show: false,
//         ),
//       ),

//       ///
//       /// [current gain perecentage]
//       ///
//       LineChartBarData(
//         spots: [
//           FlSpot(13.5, 3),
//           FlSpot(13.5, 4),
//           // FlSpot(13, 5),
//           // FlSpot(plot.maxX, curr),
//           // FlSpot(plot.maxX, (widget.targetPrice + curr) / 2),
//           // FlSpot(plot.maxX, widget.targetPrice),
//         ],
//         colors: const [Colors.green],
//         barWidth: 1,
//         isStrokeCapRound: true,
//         dotData: FlDotData(
//           show: false,
//         ),
//       ),

//       /// [potential gain percentage]
//       LineChartBarData(
//         spots: [
//           FlSpot(0.5, 3),
//           FlSpot(0.5, 6),
//         ],
//         colors: const [Colors.green],
//         barWidth: 1,
//         isStrokeCapRound: true,
//         dotData: FlDotData(
//           show: false,
//         ),
//       ),

//       /// [stop loss percentage]
//       LineChartBarData(
//         spots: [
//           FlSpot(0.5, 3),
//           FlSpot(0.5, 0),
//         ],
//         colors: const [Colors.red],
//         barWidth: 1,
//         isStrokeCapRound: true,
//         dotData: FlDotData(
//           show: false,
//         ),
//       ),

//       // LineChartBarData(
//       //   spots: [
//       //     FlSpot(plot.maxX, curr),
//       //   ],
//       //   colors: const [Colors.black],
//       //   barWidth: 1,
//       //   isStrokeCapRound: true,
//       //   dotData: FlDotData(
//       //     show: true,
//       //     getDotPainter: (spot, percent, barData, index) => buy
//       //         ? FlDotArrowDownPainter(size: 7)
//       //         : FlDotArrowPainter(size: 7),
//       //   ),
//       // ),
//       // LineChartBarData(
//       //   spots: [
//       //     FlSpot(plot.maxX, widget.targetPrice),
//       //   ],
//       //   colors: const [Colors.black],
//       //   barWidth: 1,
//       //   isStrokeCapRound: true,
//       //   dotData: FlDotData(
//       //     show: true,
//       //     getDotPainter: (spot, percent, barData, index) => buy
//       //         ? FlDotArrowPainter(size: 7)
//       //         : FlDotArrowDownPainter(size: 7),
//       //   ),
//       // ),

//       ///
//       /// [Reward Line]
//       ///
//       // LineChartBarData(
//       //   spots: [
//       //     FlSpot(plot.maxX / 1.8, widget.callPrice),
//       //     FlSpot(
//       //         plot.maxX / 1.8, (widget.targetPrice + widget.callPrice) / 2),
//       //     FlSpot(plot.maxX / 1.8, widget.targetPrice),
//       //   ],
//       //   colors: const [Colors.black],
//       //   barWidth: 1,
//       //   isStrokeCapRound: true,
//       //   dotData: FlDotData(
//       //     show: false,
//       //   ),
//       // ),
//       // LineChartBarData(
//       //   spots: [
//       //     FlSpot(plot.maxX / 1.8, widget.callPrice),
//       //   ],
//       //   colors: const [Colors.black],
//       //   barWidth: 1,
//       //   isStrokeCapRound: true,
//       //   dotData: FlDotData(
//       //     show: true,
//       //     getDotPainter: (spot, percent, barData, index) => buy
//       //         ? FlDotArrowDownPainter(size: 7)
//       //         : FlDotArrowPainter(size: 7),
//       //   ),
//       // ),
//       // LineChartBarData(
//       //   spots: [
//       //     FlSpot(plot.maxX / 1.8, widget.targetPrice),
//       //   ],
//       //   colors: const [Colors.black],
//       //   barWidth: 1,
//       //   isStrokeCapRound: true,
//       //   dotData: FlDotData(
//       //     show: true,
//       //     getDotPainter: (spot, percent, barData, index) => buy
//       //         ? FlDotArrowPainter(size: 7)
//       //         : FlDotArrowDownPainter(size: 7),
//       //   ),
//       // ),
//     ]
//   ];

//   // LineChartData get sampleData => LineChartData(
//   //       lineTouchData: LineTouchData(enabled: false),
//   //       gridData: FlGridData(show: false),
//   //       titlesData: FlTitlesData(show: false),
//   //       borderData: FlBorderData(show: false),
//   //       lineBarsData: lineBarsData,
//   //       extraLinesData: ExtraLinesData(
//   //         horizontalLines: [
//   //           HorizontalLine(
//   //             y: 2,
//   //             strokeWidth: 1,
//   //             color: Colors.pink,
//   //             label: HorizontalLineLabel(
//   //               show: true,
//   //               labelResolver: (d) => 'horizontal line1',
//   //               // style: kCaption1,
//   //             ),
//   //           ),
//   //           HorizontalLine(
//   //             y: 4,
//   //             strokeWidth: 1,
//   //             color: Colors.black,
//   //             label: HorizontalLineLabel(
//   //               show: true,
//   //               // alignment: plot.maxY == widget.targetPrice
//   //               //     ? Alignment.bottomLeft
//   //               //     : Alignment.topLeft,
//   //               labelResolver: (d) => 'horizontal line2',
//   //               // style: kCaption1,
//   //             ),
//   //           ),
//   //         ],
//   //         verticalLines: [
//   //           VerticalLine(
//   //             x: 4,
//   //             color: Colors.yellow,
//   //             label: VerticalLineLabel(
//   //               show: true,
//   //               // alignment: prewardAlign,
//   //               labelResolver: (d) => 'vertical line 1',
//   //               // style: kCaption1,
//   //             ),
//   //           ),
//   //           VerticalLine(
//   //             x: 12,
//   //             color: Colors.green,
//   //             label: VerticalLineLabel(
//   //               show: true,
//   //               // alignment: rewardAlign,
//   //               labelResolver: (d) => 'vertical line 2',
//   //               // style: kCaption1,
//   //             ),
//   //           ),
//   //         ],
//   //       ),
//   //       minX: 0,
//   //       maxX: 14,
//   //       maxY: 6,
//   //       minY: 0,
//   //     );

//   // List<LineChartBarData> get lineBarsData => [
//   //       lineChartBarData,
//   //     ];

//   // LineChartBarData get lineChartBarData => LineChartBarData(
//   //       isCurved: true,
//   //       curveSmoothness: 0,
//   //       colors: const [Color(0x444af699)],
//   //       barWidth: 4,
//   //       isStrokeCapRound: true,
//   //       dotData: FlDotData(show: false),
//   //       belowBarData: BarAreaData(show: false),
//   //       spots: const [
//   //         FlSpot(1, 1),
//   //         FlSpot(3, 4),
//   //         FlSpot(5, 1.6),
//   //         FlSpot(7, 5),
//   //         FlSpot(10, 2),
//   //         FlSpot(12, 2.2),
//   //         FlSpot(13, 1.8),
//   //       ],
//   //     );
// }
