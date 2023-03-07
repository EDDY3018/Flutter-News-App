// // ignore: file_names

// import 'package:flutter/material.dart';
// import '../specs/colors.dart';
// import 'button.dart';

// Widget emptyBox(
//   BuildContext context, {
//   String msg = "",
//   showGoHomeButton = false,
// }) {
//   return Container(
//     // height: MediaQuery.of(context).size.height,
//     // width: MediaQuery.of(context).size.width,
//     alignment: Alignment.center,
//     child: SingleChildScrollView(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Image.asset(EMPTYBIG),
//           const SizedBox(height: 20),
//           Center(
//               child: Text(
//             "Oops, Nothing Here !\n $msg",
//             textAlign: TextAlign.center,
//             style: const TextStyle(
//                 fontWeight: FontWeight.bold, fontSize: 20, color: BLACK),
//           )),
//           if (showGoHomeButton) ...[
//             const SizedBox(height: 40),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: button(
//                 onPressed: () =>
//                     Navigator(context: context, pageName: "homepage"),
//                 text: "Go Home",
//                 color: PRIMARYCOLOR,
//                 context: context,
//               ),
//             ),
//           ],
//         ],
//       ),
//     ),
//   );
// }
