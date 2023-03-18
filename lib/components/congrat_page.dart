
// import 'package:flutter/material.dart';
// import '../specs/colors.dart';

// import '../specs/images.dart';
// import 'button.dart';

// class CongratPage extends StatelessWidget {
//   final Widget? widget;
//   final void Function(BuildContext? context)? onHome;

//   // ignore: use_key_in_widget_constructors
//   const CongratPage({
//     @required this.widget,
//     @required this.onHome,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: null,
//       child: Scaffold(
//         backgroundColor: WHITE,
//         body: Container(
//           alignment: Alignment.center,
//           margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Image.asset(CORRECT, width: 150),
//               if (widget != null) widget!,
//             ],
//           ),
//         ),
//         bottomNavigationBar: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: button(
//             onPressed: () => onHome!(context),
//             text: "HOME",
//             color: PRIMARYCOLOR,
//             context: context, margin: EdgeInsets.all(30), border: null,
//           ),
//         ),
//       ),
//     );
//   }
// }
