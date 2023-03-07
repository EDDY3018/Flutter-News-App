// import 'package:flutter/material.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import '../specs/colors.dart';
// import '../specs/images.dart';


// Widget cachedImage({
//   @required BuildContext? context,
//   @required String? image,
//   @required double? height,
//   @required double? width,
//   String placeholder = DEFAULTPROFILEPICOFFLINE,
//   BoxFit fit = BoxFit.cover,
// }) {
//   return CachedNetworkImage(
//     height: height,
//     width: width,
//     fit: fit,
//     errorWidget: (widget, text, error) {
//       return Image.asset(
//         placeholder,
//         height: height,
//         width: width,
//       );
//     },
//     progressIndicatorBuilder: (context, url, progress) => Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisSize: MainAxisSize.min,
//       children: <Widget>[
//         SizedBox(
//           width: 30,
//           height: 30,
//           child: CircularProgressIndicator(
//             valueColor: const AlwaysStoppedAnimation<Color>(PRIMARYCOLOR),
//             value: progress.progress,
//           ),
//         ),
//       ],
//     ),
//     imageUrl: image!,
//   );
// }
