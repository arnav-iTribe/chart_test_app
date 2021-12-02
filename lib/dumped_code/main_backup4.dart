// after messing up too many custom clippers
// import 'package:chart_try/colors.dart';
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
//       // home: const Home(),
//       home: const WidgetTest(),
//     );
//   }
// }

// class MyCustomClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     // path.moveTo(0, 0);
//     path.lineTo(size.width / 2, 0.0);
//     // path.quadraticBezierTo(size.width / 2, 0, size.height *0.75, size.height / 2);
//     // path.quadraticBezierTo(size.width /2, 0, size.width/2, size.height);
//     path.lineTo(size.width * 0.75, size.height / 2);
//     path.lineTo(size.width / 2, size.height);
//     path.lineTo(0, size.height);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper oldClipper) {
//     return false;
//   }
// }

// class CuteClipper extends CustomClipper<Path> {
//   CuteClipper({this.borderRadius = 15});
//   final double borderRadius;
//   @override
//   Path getClip(Size size) {
//     double width = size.width;
//     double height = size.height;
//     double rheight = height - height / 3;
//     double oneThird = width / 3;

//     final path = Path()
//       ..lineTo(0, rheight - borderRadius)
//       ..cubicTo(0, rheight - borderRadius, 0, rheight, borderRadius, rheight)
//       ..lineTo(oneThird, rheight)
//       ..lineTo(width / 2 - borderRadius, height - borderRadius)
//       ..cubicTo(width / 2 - borderRadius, height - borderRadius, width / 2,
//           height, width / 2 + borderRadius, height - borderRadius)
//       ..lineTo(2 * oneThird, rheight)
//       ..lineTo(width - borderRadius, rheight)
//       ..cubicTo(width - borderRadius, rheight, width, rheight, width,
//           rheight - borderRadius)
//       ..lineTo(width, 0)
//       ..lineTo(0, 0);
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => true;
// }

// class SideArrowClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     // final path = Path()
//     //   ..lineTo(0.0, size.height)
//     //   ..lineTo(size.width, size.height)
//     //   ..lineTo(size.width, 0.0)
//     //   ..quadraticBezierTo(size.width, 0.0, size.width - 20.0, 0.0)
//     //   ..lineTo(40.0, 70.0)
//     //   ..quadraticBezierTo(10.0, 85.0, 0.0, 120.0)
//     //   ..close();
//     // return path;
//     Path path_0 = Path();
//     path_0.moveTo(size.width*0.8644636,size.height*0.1688314);
//     path_0.cubicTo(size.width*0.8232927,size.height*0.06100545,size.width*0.7662655,0,size.width*0.7066400,0);
//     path_0.lineTo(size.width*0.2000000,0);
//     path_0.cubicTo(size.width*0.08954309,0,0,size.height*0.2238577,0,size.height*0.5000000);
//     path_0.lineTo(0,size.height*0.5000000);
//     path_0.cubicTo(0,size.height*0.7761409,size.width*0.08954309,size.height,size.width*0.2000000,size.height);
//     path_0.lineTo(size.width*0.7066400,size.height);
//     path_0.cubicTo(size.width*0.7662655,size.height,size.width*0.8232927,size.height*0.9389955,size.width*0.8644636,size.height*0.8311682);
//     path_0.lineTo(size.width*0.9909091,size.height*0.5000000);
//     path_0.lineTo(size.width*0.8644636,size.height*0.1688314);
//     path_0.close();
//     return path_0;
//     // Path path = Path();
//     // path.lineTo(size.width * 0.25, size.height / 2);
//     // path.lineTo(0, size.height);
//     // path.close();
//     // return path;
//     // final double width = size.width /1.5;
//     // final double height = size.height;
//     // final double startMargin = width / 12;

//     // final double s1 = height * 0.3;
//     // final double s2 = height * 0.7;
//     // final Path path = Path()
//     //   ..addRRect(RRect.fromRectAndRadius(
//     //       Rect.fromLTWH(0, 0,  width, height),
//     //       const Radius.circular(30)))
//     //   ..moveTo(,)
//     //   // ..lineTo(startMargin, s1)
//     //   // ..lineTo(0, size.height / 2)
//     //   // ..lineTo(startMargin, s2)
//     //   ..close();
//     // return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return oldClipper != this;
//   }
// }

// class WidgetTest extends StatelessWidget {
//   const WidgetTest({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // body: Center(child: callPriceIconWidget()),
//       // body: Center(child: ltpIconWidget()),
//       body: Center(
//         child: Container(
//           // decoration: const BoxDecoration(
//           //   borderRadius: BorderRadius.only(
//           //       topRight: Radius.circular(5),
//           //       topLeft: Radius.circular(11.5),
//           //       bottomLeft: Radius.circular(11.5),
//           //       bottomRight: Radius.circular(5)),
//           //   color: Colors.amber,
//           // ),
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: ClipPath(
//               // clipper: MyCustomClipper(),
//               clipper: SideArrowClipper(),
//               child: Image.network(
//                 'https://i.ibb.co/1vXpqVs/flutter-logo.jpg',
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget callPriceIconWidget() {
//     return Container(
//       width: 54.5,
//       height: 22,
//       decoration: const BoxDecoration(
//         borderRadius: BorderRadius.only(
//             topRight: Radius.circular(5),
//             topLeft: Radius.circular(11.5),
//             bottomLeft: Radius.circular(11.5),
//             bottomRight: Radius.circular(5)),
//         color: Colors.amber,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [Text('c'), Text('100')],
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
//         color: Colors.amber,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [Text('a'), Text('121')],
//       ),
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
//             child: SizedBox(
//               // todo: calculate aspect ratio and use it
//               height: 150,
//               width: 258,
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
//         //color different regions
//         rangeAnnotations: RangeAnnotations(
//           horizontalRangeAnnotations: [
//             HorizontalRangeAnnotation(
//               y1: 4,
//               y2: 6,
//               // color: Colors.green[100],
//               color: Color(0xffDEFCF0),
//             ),
//             HorizontalRangeAnnotation(
//               y1: 3,
//               y2: 4,
//               color: Colors.green[200],
//               // color: Color(0xff00D5AA),
//             ),
//             HorizontalRangeAnnotation(
//               y1: 0,
//               y2: 3,
//               color: Colors.red[100],
//               // color: Color(0xffFEDED),
//             ),
//           ],
//         ),
//         backgroundColor: Colors.transparent,
//         lineTouchData: LineTouchData(enabled: false),
//         gridData: FlGridData(show: false),
//         titlesData: FlTitlesData(show: false),
//         borderData: FlBorderData(show: false),
//         lineBarsData: lineBarData,
//         extraLinesData: ExtraLinesData(
//           horizontalLines: [
//             //topmost green line for buy call
//             HorizontalLine(
//               y: 6,
//               strokeWidth: 1,
//               color: Colors.green,
//               label: HorizontalLineLabel(
//                 show: false,
//               ),
//             ),
//             // white line for call price
//             HorizontalLine(
//               //todo: align this horizontal line
//               y: 3,
//               strokeWidth: 2,
//               color: Colors.white,
//               label: HorizontalLineLabel(
//                 show: true,
//                 // alignment: plot.maxY == widget.targetPrice
//                 //     ? Alignment.bottomLeft
//                 //     : Alignment.topLeft,
//                 labelResolver: (d) => 'call price widget here',
//                 // style: kCaption1,
//               ),
//             ),
//             // bottom red line stop loss line for buy call
//             HorizontalLine(
//               y: 0,
//               strokeWidth: 1,
//               color: Colors.pink,
//               label: HorizontalLineLabel(
//                 show: false,
//                 // alignment: plot.maxY == widget.targetPrice
//                 //     ? Alignment.bottomLeft
//                 //     : Alignment.topLeft,
//                 // labelResolver: (d) => 'stop loss line',
//                 // style: kCaption1,
//               ),
//             ),
//           ],
//         ),
//         //todo: change maxX, minX, maxY, minY dynamically
//         minX: 0,
//         maxX: 14,
//         maxY: 6,
//         minY: 0,
//       ),
//     );
//   }

//   static List<double> prices = [
//     345.5,
//     336.05,
//     334.7,
//     332.95,
//     339.65,
//     342.3,
//     342.45,
//     342.4,
//     334.75,
//     323,
//     330.7,
//     369.05,
//     401.85,
//     410.45,
//     420,
//     410.05,
//     410.85,
//     417.2,
//     417.2,
//     424.4,
//     415.65,
//     408.1,
//     422.6,
//     415.85,
//     424.85,
//     429,
//     427.5,
//     434.9,
//     441.75,
//     414.45,
//     412.95,
//     407.1,
//     413.65,
//     401.15,
//     415.85,
//     414.4,
//     396.55,
//     398.6,
//     408.85,
//     430.05,
//     429.65,
//     430.85,
//     442.2,
//     437.4,
//     434.5,
//     416,
//     428.35,
//     424.05,
//     423.8,
//     417.95,
//     415.9,
//     400.45,
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
//           FlSpot(14, 4),
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
//           FlSpot(13.5, 3),
//           FlSpot(13.5, 4),
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
//           const FlSpot(13.5, 4),
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
