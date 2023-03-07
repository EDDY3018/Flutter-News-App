import 'package:flutter/material.dart';

import '../specs/colors.dart';

Widget circular({
  @required Widget? child,
  @required double? size,
  Color borderColor = DEEPGREY,
}) {
  return ClipOval(
    child: Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
      ),
      child: child,
    ),
  );
}
