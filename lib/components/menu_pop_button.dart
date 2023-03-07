import 'package:flutter/material.dart';

import '../specs/arrays.dart';
// import 'package:smartschool_admin_mobile/specs/colors.dart';

Widget menuPopButton({
  void Function(Menu menu)? onAction,
  // String? text,
  // String? tip,
  // TextStyle? textStyle,
  bool? enableAssignParent = false,
  bool? enableAssignWard = false,
}) {
  return PopupMenuButton<Menu>(
    onSelected: (menu) => onAction!(menu),
    itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
      const PopupMenuItem<Menu>(
        value: Menu.edit,
        child: Text('Edit'),
      ),
      const PopupMenuItem<Menu>(
        value: Menu.delete,
        child: Text('Delete'),
      ),
      if (enableAssignParent!)
        const PopupMenuItem<Menu>(
          value: Menu.assignParent,
          child: Text('Assign Parent'),
        ),
      if (enableAssignWard!)
        const PopupMenuItem<Menu>(
          value: Menu.assignWard,
          child: Text('Assign Ward'),
        ),
    ],
  );
}
