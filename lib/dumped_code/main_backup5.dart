// import 'package:chart_try/colors.dart';
// import 'package:chart_try/icon_widgets.dart';
// import 'package:chart_try/side_arrow_clipper.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';

// import 'arrow_painter.dart';

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
//       // home: const WidgetTest(),
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
//         children: [
//           const SizedBox(
//             height: 50,
//           ),
//           const Text('for buy call'),
//           const SizedBox(
//             height: 50,
//           ),
//           Stack(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: SizedBox(
//                   child: _LineChart(),
//                 ),
//               ),
//               const Positioned(
//                 top: 5,
//                 left: 40,
//                 child: Text('+13%'),
//               ),
//               const Positioned(
//                 bottom: 5,
//                 left: 40,
//                 child: Text('-8%'),
//               ),
//               const Positioned(
//                 top: 5,
//                 right: 30,
//                 child: Text('555'),
//               ),
//               const Positioned(
//                 bottom: 5,
//                 right: 30,
//                 child: Text('509'),
//               ),
//               Positioned(
//                 top: 95, //todo: dynamic
//                 left: 40,
//                 child: callPriceIconWidget(),
//               ),
//               Positioned(
//                 top: 40, //todo: dynamic
//                 right: 120,
//                 child: ltpIconWidget(),
//               ),
//               const Positioned(
//                 top: 85, //todo: dynamic
//                 right: 30,
//                 child: Text('+2.5%'),
//               ),
//             ],
//           ),
//         ],
//       )),
//     );
//   }

//   Widget callPriceIconWidget() {
//     return ClipPath(
//       clipper: SideArrowClipper(),
//       child: Container(
//         width: 54.5,
//         height: 22,
//         decoration: const BoxDecoration(
//           borderRadius: BorderRadius.only(
//               topRight: Radius.circular(5),
//               topLeft: Radius.circular(11.5),
//               bottomLeft: Radius.circular(11.5),
//               bottomRight: Radius.circular(5)),
//           color: Colors.white,
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [Text('c'), Text('100')],
//         ),
//       ),
//     );
//   }

//   Widget ltpIconWidget() {
//     return Container(
//       width: 49,
//       height: 22,
//       decoration: const BoxDecoration(
//         borderRadius: BorderRadius.only(
//             topRight: Radius.circular(11.5),
//             topLeft: Radius.circular(11.5),
//             bottomLeft: Radius.circular(11.5),
//             bottomRight: Radius.circular(2)),
//         color: Colors.white,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [Text('a'), Text('121')],
//       ),
//     );
//   }
// }

// class _LineChart extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: 1.72,
//       child: LineChart(
//         LineChartData(
//           //color different regions
//           rangeAnnotations: RangeAnnotations(
//             horizontalRangeAnnotations: [
//               HorizontalRangeAnnotation(
//                 y1: 4, //todo: dynamic
//                 y2: 6, //todo: dynamic
//                 // color: Colors.green[100],
//                 color: Color(0xffDEFCF0),
//               ),
//               HorizontalRangeAnnotation(
//                 y1: 3, //todo: dynamic
//                 y2: 4, //todo: dynamic
//                 color: Colors.green[200],
//                 // color: Color(0xff00D5AA),
//               ),
//               HorizontalRangeAnnotation(
//                 y1: 0, //todo: dynamic
//                 y2: 3, //todo: dynamic
//                 color: Colors.red[100],
//                 // color: Color(0xffFEDED),
//               ),
//             ],
//           ),
//           backgroundColor: Colors.transparent,
//           gridData: FlGridData(show: false),
//           titlesData: FlTitlesData(show: false),
//           borderData: FlBorderData(show: false),
//           lineTouchData: LineTouchData(enabled: false),
//           lineBarsData: lineBarData,
//           extraLinesData: ExtraLinesData(
//             horizontalLines: [
//               //topmost green line for buy call
//               HorizontalLine(
//                 y: 6, //target price ( in buy call) //todo: dynamic
//                 // y: 450,
//                 strokeWidth: 1,
//                 color: Colors.green,
//                 label: HorizontalLineLabel(
//                   show: false,
//                 ),
//               ),
//               // white line for call price
//               HorizontalLine(
//                 // image: ,
//                 // sizedPicture: ,

//                 y: 3, //todo: dynamic
//                 strokeWidth: 2,
//                 color: Colors.white,
//                 // label: HorizontalLineLabel(
//                 //   show: true,
//                 //   // alignment: plot.maxY == widget.targetPrice
//                 //   //     ? Alignment.bottomLeft
//                 //   //     : Alignment.topLeft,
//                 //   labelResolver: (d) => 'call widget',
//                 //   // style: kCaption1,
//                 // ),
//               ),
//               // bottom red line stop loss line for buy call
//               HorizontalLine(
//                 y: 0, //stop loss price (in buy call) //todo: dynamic
//                 // y:200,
//                 strokeWidth: 1,
//                 color: Colors.pink,
//                 label: HorizontalLineLabel(
//                   show: false,
//                   // alignment: plot.maxY == widget.targetPrice
//                   //     ? Alignment.bottomLeft
//                   //     : Alignment.topLeft,
//                   // labelResolver: (d) => 'stop loss line',
//                   // style: kCaption1,
//                 ),
//               ),
//             ],
//           ),
//           //todo: change maxX, minX, maxY, minY dynamically
//           minX: 0,
//           maxX: 18,
//           maxY: 6,
//           minY: 0,
//           // minY: 200,
//           // maxY: 450,
//         ),
//       ),
//     );
//   }

//   static List<double> prices = [
//     345.5,
//     336.05,
//     334.7,
//     334.75,
//     323,
//     330.7,
//     407.95,
//     403.5,
//     407.25,
//     376.85,
//     374.85,
//     374.8,
//     383.1
//   ];

//   static List<FlSpot> mySpots = prices.asMap().entries.map((e) {
//     return FlSpot(e.key.toDouble(), e.value);
//   }).toList();

//   List<LineChartBarData> lineBarData = [
//     LineChartBarData(
//       // spots: mySpots,
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
//           if (index == 6) {
//             return FlDotCirclePainter(
//               radius: 3,
//               color: Colors.green,
//               strokeWidth: 4,
//               strokeColor: Colors.white,
//             );
//           } else {
//             return FlDotCirclePainter(
//               radius: 0,
//               color: Colors.transparent,
//               strokeWidth: 0,
//               strokeColor: Colors.transparent,
//             );
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
//           FlSpot(18, 4),
//         ],
//         dashArray: [2, 5],
//         colors: const [Colors.green],
//         barWidth: 1.5,
//         isStrokeCapRound: true,
//         dotData: FlDotData(
//           show: false,
//         ),
//       ),

//       ///
//       /// [current gain perecentage]
//       ///
//       LineChartBarData(
//         spots: [
//           // x value should be maxX (-0.5) and y should range from callPrice to ltp
//           FlSpot(17.5, 3),
//           FlSpot(17.5, 4),
//           // FlSpot(13, 5),
//           // FlSpot(plot.maxX, curr),
//           // FlSpot(plot.maxX, (widget.targetPrice + curr) / 2),
//           // FlSpot(plot.maxX, widget.targetPrice),
//         ],
//         colors: const [Colors.green],
//         barWidth: 1.5,
//         isStrokeCapRound: true,
//         dotData: FlDotData(
//           show: false,
//         ),
//       ),

//       /// [potential gain percentage]
//       LineChartBarData(
//         spots: [
//           //x value should be minX (+0.5) and y value should range from callPrice to targetPrice
//           FlSpot(0.5, 3),
//           FlSpot(0.5, 6),
//         ],
//         colors: const [Colors.green],
//         barWidth: 1.5,
//         isStrokeCapRound: true,
//         dotData: FlDotData(
//           show: false,
//         ),
//       ),

//       /// [stop loss percentage]
//       LineChartBarData(
//         spots: [
//           //x value should be minX (+0.5) and y value should range from callPrice to stoploss price
//           FlSpot(0.5, 3),
//           FlSpot(0.5, 0),
//         ],
//         colors: const [Colors.red],
//         barWidth: 1.5,
//         isStrokeCapRound: true,
//         dotData: FlDotData(
//           show: false,
//         ),
//       ),

//       /// [current gain percentage arrow]
//       /// todo: change position dynamically
//       LineChartBarData(
//         spots: [
//           const FlSpot(17.5, 4),
//         ],
//         colors: const [Colors.black],
//         barWidth: 1,
//         isStrokeCapRound: true,
//         dotData: FlDotData(
//             show: true,
//             getDotPainter: (spot, percent, barData, index) =>
//                 FlDotArrowUpPainter(size: 5)

//             // getDotPainter: (spot, percent, barData, index) => buy
//             //     ? FlDotArrowDownPainter(size: 7)
//             //     : FlDotArrowPainter(size: 7),
//             ),
//       ),

//       ///[potential gain percentage arrow]
//       LineChartBarData(
//         spots: [
//           FlSpot(0.5, 6),
//         ],
//         colors: const [Colors.black],
//         barWidth: 1,
//         isStrokeCapRound: true,
//         dotData: FlDotData(
//             show: true,
//             getDotPainter: (spot, percent, barData, index) =>
//                 FlDotArrowUpPainter(size: 5)),
//       ),

//       ///[stop loss percentage arrow]
//       LineChartBarData(
//         spots: [
//           FlSpot(0.5, 0),
//         ],
//         colors: const [Colors.black],
//         barWidth: 1,
//         isStrokeCapRound: true,
//         dotData: FlDotData(
//             show: true,
//             getDotPainter: (spot, percent, barData, index) =>
//                 FlDotArrowDownPainter(size: 5)),
//       ),
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