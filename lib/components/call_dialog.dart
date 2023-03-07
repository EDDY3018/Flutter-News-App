// import 'package:smartschool_admin_mobile/config/navigation.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:smartschool_admin_mobile/specs/styles.dart';

// Future<void> callDialog({@required BuildContext? context}) async {
//   return showCupertinoModalPopup<void>(
//     context: context!,
//     builder: (BuildContext context) {
//       return CupertinoActionSheet(
//         // title: Text('Favorite Dessert'),
//         // message: Text('Please select the best dessert from the options below.'),
//         actions: <Widget>[
//           CupertinoActionSheetAction(
//             child: Text('📞 Call Number', style: h3BlackBold),
//             onPressed: () {
//               launchURL("tel: $PHONENUMBER");
//               navigation(context: context, pageName: "back");
//             },
//           ),
//         ],
//         cancelButton: CupertinoActionSheetAction(
//           isDefaultAction: true,
//           child: Text('Cancel', style: h4Black),
//           onPressed: () => navigation(context: context, pageName: "back"),
//         ),
//       );
//     },
//   );
// }
