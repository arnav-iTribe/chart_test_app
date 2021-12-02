import 'package:chart_try/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'arrow_painter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
      // home: const WidgetTest(),
    );
  }
}

class WidgetTest extends StatelessWidget {
  const WidgetTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: callPriceIconWidget()),
      // body: Center(child: ltpIconWidget()),
    );
  }

  Widget callPriceIconWidget() {
    return Container(
      width: 54.5,
      height: 22,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(5),
            topLeft: Radius.circular(11.5),
            bottomLeft: Radius.circular(11.5),
            bottomRight: Radius.circular(5)),
        color: Colors.amber,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [Text('c'), Text('100')],
      ),
    );
  }

  Widget ltpIconWidget() {
    return Container(
      width: 49,
      height: 22,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(11.5),
            topLeft: Radius.circular(11.5),
            bottomLeft: Radius.circular(11.5),
            bottomRight: Radius.circular(2)),
        color: Colors.amber,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [Text('a'), Text('121')],
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          Text('for buy call'),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              // todo: calculate aspect ratio and use it
              height: 150,
              width: 258,
              child: _LineChart(),
            ),
          ),
        ],
      )),
    );
  }
}

class _LineChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        //color different regions
        rangeAnnotations: RangeAnnotations(
          horizontalRangeAnnotations: [
            HorizontalRangeAnnotation(
              y1: 4,
              y2: 6,
              // color: Colors.green[100],
              color: Color(0xffDEFCF0),
            ),
            HorizontalRangeAnnotation(
              y1: 3,
              y2: 4,
              color: Colors.green[200],
              // color: Color(0xff00D5AA),
            ),
            HorizontalRangeAnnotation(
              y1: 0,
              y2: 3,
              color: Colors.red[100],
              // color: Color(0xffFEDED),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        lineTouchData: LineTouchData(enabled: false),
        gridData: FlGridData(show: false),
        titlesData: FlTitlesData(show: false),
        borderData: FlBorderData(show: false),
        lineBarsData: lineBarData,
        extraLinesData: ExtraLinesData(
          horizontalLines: [
            //topmost green line for buy call
            HorizontalLine(
              y: 6,
              strokeWidth: 1,
              color: Colors.green,
              label: HorizontalLineLabel(
                show: false,
              ),
            ),
            // white line for call price
            HorizontalLine(
              y: 3,
              strokeWidth: 2,
              color: Colors.white,
              label: HorizontalLineLabel(
                show: true,
                // alignment: plot.maxY == widget.targetPrice
                //     ? Alignment.bottomLeft
                //     : Alignment.topLeft,
                labelResolver: (d) => 'call price widget here',
                // style: kCaption1,
              ),
            ),
            // bottom red line stop loss line for buy call
            HorizontalLine(
              y: 0,
              strokeWidth: 1,
              color: Colors.pink,
              label: HorizontalLineLabel(
                show: false,
                // alignment: plot.maxY == widget.targetPrice
                //     ? Alignment.bottomLeft
                //     : Alignment.topLeft,
                // labelResolver: (d) => 'stop loss line',
                // style: kCaption1,
              ),
            ),
          ],
        ),
        minX: 0,
        maxX: 14,
        maxY: 6,
        minY: 0,
      ),
    );
  }

  static List<double> prices = [
    345.5,
    336.05,
    334.7,
    332.95,
    339.65,
    342.3,
    342.45,
    342.4,
    334.75,
    323,
    330.7,
    369.05,
    401.85,
    410.45,
    420,
    410.05,
    410.85,
    417.2,
    417.2,
    424.4,
    415.65,
    408.1,
    422.6,
    415.85,
    424.85,
    429,
    427.5,
    434.9,
    441.75,
    414.45,
    412.95,
    407.1,
    413.65,
    401.15,
    415.85,
    414.4,
    396.55,
    398.6,
    408.85,
    430.05,
    429.65,
    430.85,
    442.2,
    437.4,
    434.5,
    416,
    428.35,
    424.05,
    423.8,
    417.95,
    415.9,
    400.45,
    407.95,
    403.5,
    407.25,
    376.85,
    374.85,
    374.8,
    383.1
  ];

  static List<FlSpot> mySpots = prices.asMap().entries.map((e) {
    return FlSpot(e.key.toDouble(), e.value);
  }).toList();

  List<LineChartBarData> lineBarData = [
    LineChartBarData(
      spots: mySpots,
      // spots: const [
      //   FlSpot(1, 1),
      //   FlSpot(3, 4),
      //   FlSpot(5, 1.6),
      //   FlSpot(7, 5),
      //   FlSpot(10, 2),
      //   FlSpot(12, 2.6),
      //   FlSpot(13, 4),
      // ],
      isCurved: false,
      colors: blackGradientColors,
      barWidth: 3,
      curveSmoothness: 0.5,
      isStrokeCapRound: true,
      // dotData: FlDotData(show: false),
      dotData: FlDotData(
        // checkToShowDot: (spot, barData) {
        //   return ;
        // },
        getDotPainter: (spot, percent, barData, index) {
          //index should be at the ltp
          if (index == 6) {
            return FlDotCirclePainter(
              radius: 3,
              color: Colors.green,
              strokeWidth: 4,
              strokeColor: Colors.white,
            );
          } else {
            return FlDotCirclePainter(
              radius: 0,
              color: Colors.transparent,
              strokeWidth: 0,
              strokeColor: Colors.transparent,
            );
          }
        },
      ),
      belowBarData: BarAreaData(show: false),
    ),
    ...[
      ///
      /// [LTP dashed line]
      ///
      LineChartBarData(
        spots: const [
          //x should be from minX to maxX and y should be at ltp
          FlSpot(0, 4),
          FlSpot(14, 4),
        ],
        dashArray: [2, 5],
        colors: const [Colors.green],
        barWidth: 1.5,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
      ),

      ///
      /// [current gain perecentage]
      ///
      LineChartBarData(
        spots: [
          // x value should be maxX (-0.5) and y should range from callPrice to ltp
          FlSpot(13.5, 3),
          FlSpot(13.5, 4),
          // FlSpot(13, 5),
          // FlSpot(plot.maxX, curr),
          // FlSpot(plot.maxX, (widget.targetPrice + curr) / 2),
          // FlSpot(plot.maxX, widget.targetPrice),
        ],
        colors: const [Colors.green],
        barWidth: 1.5,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
      ),

      /// [potential gain percentage]
      LineChartBarData(
        spots: [
          //x value should be minX (+0.5) and y value should range from callPrice to targetPrice
          FlSpot(0.5, 3),
          FlSpot(0.5, 6),
        ],
        colors: const [Colors.green],
        barWidth: 1.5,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
      ),

      /// [stop loss percentage]
      LineChartBarData(
        spots: [
          //x value should be minX (+0.5) and y value should range from callPrice to stoploss price
          FlSpot(0.5, 3),
          FlSpot(0.5, 0),
        ],
        colors: const [Colors.red],
        barWidth: 1.5,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
      ),

      /// [current gain percentage arrow]
      /// todo: change position dynamically
      LineChartBarData(
        spots: [
          const FlSpot(13.5, 4),
        ],
        colors: const [Colors.black],
        barWidth: 1,
        isStrokeCapRound: true,
        dotData: FlDotData(
            show: true,
            getDotPainter: (spot, percent, barData, index) =>
                FlDotArrowUpPainter(size: 5)

            // getDotPainter: (spot, percent, barData, index) => buy
            //     ? FlDotArrowDownPainter(size: 7)
            //     : FlDotArrowPainter(size: 7),
            ),
      ),

      ///[potential gain percentage arrow]
      LineChartBarData(
        spots: [
          FlSpot(0.5, 6),
        ],
        colors: const [Colors.black],
        barWidth: 1,
        isStrokeCapRound: true,
        dotData: FlDotData(
            show: true,
            getDotPainter: (spot, percent, barData, index) =>
                FlDotArrowUpPainter(size: 5)),
      ),

      ///[stop loss percentage arrow]
      LineChartBarData(
        spots: [
          FlSpot(0.5, 0),
        ],
        colors: const [Colors.black],
        barWidth: 1,
        isStrokeCapRound: true,
        dotData: FlDotData(
            show: true,
            getDotPainter: (spot, percent, barData, index) =>
                FlDotArrowDownPainter(size: 5)),
      ),

      ///
      /// [Reward Line]
      ///
      // LineChartBarData(
      //   spots: [
      //     FlSpot(plot.maxX / 1.8, widget.callPrice),
      //     FlSpot(
      //         plot.maxX / 1.8, (widget.targetPrice + widget.callPrice) / 2),
      //     FlSpot(plot.maxX / 1.8, widget.targetPrice),
      //   ],
      //   colors: const [Colors.black],
      //   barWidth: 1,
      //   isStrokeCapRound: true,
      //   dotData: FlDotData(
      //     show: false,
      //   ),
      // ),
      // LineChartBarData(
      //   spots: [
      //     FlSpot(plot.maxX / 1.8, widget.callPrice),
      //   ],
      //   colors: const [Colors.black],
      //   barWidth: 1,
      //   isStrokeCapRound: true,
      //   dotData: FlDotData(
      //     show: true,
      //     getDotPainter: (spot, percent, barData, index) => buy
      //         ? FlDotArrowDownPainter(size: 7)
      //         : FlDotArrowPainter(size: 7),
      //   ),
      // ),
      // LineChartBarData(
      //   spots: [
      //     FlSpot(plot.maxX / 1.8, widget.targetPrice),
      //   ],
      //   colors: const [Colors.black],
      //   barWidth: 1,
      //   isStrokeCapRound: true,
      //   dotData: FlDotData(
      //     show: true,
      //     getDotPainter: (spot, percent, barData, index) => buy
      //         ? FlDotArrowPainter(size: 7)
      //         : FlDotArrowDownPainter(size: 7),
      //   ),
      // ),
    ]
  ];

  // LineChartData get sampleData => LineChartData(
  //       lineTouchData: LineTouchData(enabled: false),
  //       gridData: FlGridData(show: false),
  //       titlesData: FlTitlesData(show: false),
  //       borderData: FlBorderData(show: false),
  //       lineBarsData: lineBarsData,
  //       extraLinesData: ExtraLinesData(
  //         horizontalLines: [
  //           HorizontalLine(
  //             y: 2,
  //             strokeWidth: 1,
  //             color: Colors.pink,
  //             label: HorizontalLineLabel(
  //               show: true,
  //               labelResolver: (d) => 'horizontal line1',
  //               // style: kCaption1,
  //             ),
  //           ),
  //           HorizontalLine(
  //             y: 4,
  //             strokeWidth: 1,
  //             color: Colors.black,
  //             label: HorizontalLineLabel(
  //               show: true,
  //               // alignment: plot.maxY == widget.targetPrice
  //               //     ? Alignment.bottomLeft
  //               //     : Alignment.topLeft,
  //               labelResolver: (d) => 'horizontal line2',
  //               // style: kCaption1,
  //             ),
  //           ),
  //         ],
  //         verticalLines: [
  //           VerticalLine(
  //             x: 4,
  //             color: Colors.yellow,
  //             label: VerticalLineLabel(
  //               show: true,
  //               // alignment: prewardAlign,
  //               labelResolver: (d) => 'vertical line 1',
  //               // style: kCaption1,
  //             ),
  //           ),
  //           VerticalLine(
  //             x: 12,
  //             color: Colors.green,
  //             label: VerticalLineLabel(
  //               show: true,
  //               // alignment: rewardAlign,
  //               labelResolver: (d) => 'vertical line 2',
  //               // style: kCaption1,
  //             ),
  //           ),
  //         ],
  //       ),
  //       minX: 0,
  //       maxX: 14,
  //       maxY: 6,
  //       minY: 0,
  //     );

  // List<LineChartBarData> get lineBarsData => [
  //       lineChartBarData,
  //     ];

  // LineChartBarData get lineChartBarData => LineChartBarData(
  //       isCurved: true,
  //       curveSmoothness: 0,
  //       colors: const [Color(0x444af699)],
  //       barWidth: 4,
  //       isStrokeCapRound: true,
  //       dotData: FlDotData(show: false),
  //       belowBarData: BarAreaData(show: false),
  //       spots: const [
  //         FlSpot(1, 1),
  //         FlSpot(3, 4),
  //         FlSpot(5, 1.6),
  //         FlSpot(7, 5),
  //         FlSpot(10, 2),
  //         FlSpot(12, 2.2),
  //         FlSpot(13, 1.8),
  //       ],
  //     );
}
