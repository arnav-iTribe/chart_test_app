// import 'package:chart_try/side_arrow_clipper.dart';
// import 'package:flutter/material.dart';

// class WidgetTest extends StatelessWidget {
//   const WidgetTest({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           // child: callPriceIconWidget(),
//           child: ltpIconWidget(),
//         ),
//       ),
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
