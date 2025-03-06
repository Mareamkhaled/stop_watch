// // // responsive_layout.dart

// // import 'package:flutter/material.dart';

// // class ResponsiveContainer extends StatelessWidget {
// //   final Color color;
// //   final double heightFactor;
// //   final double widthFactor;

// //   const ResponsiveContainer({
// //     Key? key,
// //     required this.color,
// //     this.heightFactor = 0.1,
// //     this.widthFactor = 0.1,
// //   }) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return LayoutBuilder(
// //       builder: (context, constraints) {
// //         // Determine dimensions based on screen size
// //         double containerHeight = constraints.maxHeight * heightFactor;
// //         double containerWidth = constraints.maxWidth * widthFactor;

// //         return Container(
// //           color: color,
// //           height: containerHeight,
// //           width: containerWidth,
// //         );
// //       },
// //     );
// //   }
// // }


// // responsive_layout.dart

// import 'package:flutter/material.dart';

// class ResponsiveContainer extends StatelessWidget {
//   const ResponsiveContainer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         // Determine dimensions based on screen size
//         double containerHeight;
//         double containerWidth;

//         if (constraints.maxWidth < 600) {
//           // For mobiles
//           containerHeight = constraints.maxHeight * 0.2; // 20% of screen height
//           containerWidth = constraints.maxWidth * 0.2;   // 20% of screen width
//         } else if (constraints.maxWidth < 1200) {
//           // For tablets
//           containerHeight = constraints.maxHeight * 0.15; // 15% of screen height
//           containerWidth = constraints.maxWidth * 0.15;   // 15% of screen width
//         } else {
//           // For web/large screens
//           containerHeight = constraints.maxHeight * 0.1;  // 10% of screen height
//           containerWidth = constraints.maxWidth * 0.1;    // 10% of screen width
//         }

//         return Container(
//           color: Colors.black,
//           height: containerHeight,
//           width: containerWidth,
//           child: Text("data"),
//         );
//       },
//     );
//   }
// }
