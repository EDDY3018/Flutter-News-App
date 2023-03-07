// import 'package:flutter/material.dart';
// import '../specs/colors.dart';
// import '../specs/styles.dart';
// import 'loading_view.dart';

// Widget customLoadingPage({
//   String msg = "",
//   bool showClose = false,
//   void Function()? onClose,
// }) {
//   return Scaffold(
//     backgroundColor: WHITE.withOpacity(.5),
//     body: Stack(
//       children: [
//         Center(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               loadingThreeBounce(PRIMARYCOLOR),
//               if (msg != "") ...[
//                 const SizedBox(height: 20),
//                 Center(
//                   child: Text(
//                     msg,
//                     style: h5Black,
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ]
//             ],
//           ),
//         ),
//         if (showClose)
//           Align(
//             alignment: Alignment.topRight,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: CircleAvatar(
//                 backgroundColor: BLACK,
//                 child: IconButton(
//                   onPressed: onClose,
//                   color: WHITE,
//                   icon: const Icon(Icons.close),
//                 ),
//               ),
//             ),
//           ),
//       ],
//     ),
//   );
// }

// Widget customPage({
//   String msg = "",
//   bool showClose = false,
//   void Function()? onClose,
// }) {
//   return Scaffold(
//     backgroundColor: BLACK.withOpacity(.5),
//     body: Stack(
//       children: [
//         Center(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               const SizedBox(height: 20),
//               Center(
//                 child: Text(
//                   msg,
//                   style: h5Black,
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         if (showClose)
//           Align(
//             alignment: Alignment.topRight,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: CircleAvatar(
//                 backgroundColor: BLACK,
//                 child: IconButton(
//                   onPressed: onClose,
//                   color: WHITE,
//                   icon: const Icon(Icons.close),
//                 ),
//               ),
//             ),
//           ),
//       ],
//     ),
//   );
// }
