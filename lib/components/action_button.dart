import 'package:flutter/material.dart';
import '../specs/colors.dart';
import '../specs/styles.dart';




Widget actionRaisedButton({
  Color? borderColor,
  Color? backGroungColor = WHITE,
  Color? iconColor,
  IconData? icon,
  void Function()? onAction,
  String? text,
  String? tip,
  TextStyle? textStyle,
}) {
  return GestureDetector(
    onTap: onAction,
    child: Material(
      shadowColor: BLACK,
      elevation: 5,
      color: backGroungColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderColor!),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Tooltip(
        message: tip ?? "no tip",
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
          child: icon != null
              ? Icon(
                  icon,
                  color: iconColor,
                  size: 20,
                )
              : Text(
                  text!,
                  style: textStyle ?? h4White,
                ),
        ),
      ),
    ),
  );
}

Widget actionButton({
  Color? borderColor,
  Color? backGroungColor,
  Color? iconColor,
  IconData? icon,
  void Function()? onAction,
  double? height = 10,
  double? width = 20,
  String? text,
  String? tip,
}) {
  return GestureDetector(
    onTap: onAction,
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: width!, vertical: height!),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: backGroungColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(0.0, 1.0),
              blurRadius: 6.0,
              color: BLACK.withOpacity(.5),
            ),
          ]),
      child: Tooltip(
        message: tip ?? "no tip",
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
            child: icon != null
                ? Icon(
                    icon,
                    color: iconColor,
                    size: 20,
                  )
                : Text(text!)),
      ),
    ),
  );
}
