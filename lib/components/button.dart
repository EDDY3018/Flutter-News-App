import 'package:flutter/material.dart';
import '../specs/colors.dart';
import '../specs/styles.dart';

Widget button({
  @required void Function()? onPressed,
  void Function()? onLongPressed,
  @required String? text,
  @required Color? color,
  Color textColor = WHITE,
  bool colorFill = true,
  @required BuildContext? context,
  double divideWidth = 1.0,
  bool useWidth = true,
  double buttonRadius = 5,
  double height = 40,
  double elevation = .0,
  Color backgroundcolor = BACKGROUND,
  TextStyle? textStyle,
  Widget? leadingIcon,
  bool showBorder = true,
  EdgeInsetsGeometry? padding,
  bool centerItems = false,
  BorderRadiusGeometry? borderRadiusGeometry,
  Widget? postFixIcon,
  ButtonStyle? style,
  Widget? icon, required 
  EdgeInsets margin,
}) {
  return SizedBox(
    width: useWidth ? MediaQuery.of(context!).size.width * divideWidth : null,
    height: height,
    child: ElevatedButton(
      onPressed: onPressed,
      onLongPress: onLongPressed,
      style: ElevatedButton.styleFrom(
        padding: padding,
        elevation: elevation,
        foregroundColor: textColor,
        backgroundColor: colorFill ? color : backgroundcolor,
        shape: showBorder
            ? RoundedRectangleBorder(
                side: BorderSide(color: color!),
                borderRadius:
                    borderRadiusGeometry ?? BorderRadius.circular(buttonRadius),
              )
            : null,
        textStyle: textStyle ?? buttonStyle14,
      ),
      child: leadingIcon == null && postFixIcon == null
          ? Text("$text", textAlign: TextAlign.center)
          : Row(
              mainAxisAlignment: centerItems
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.start,
              children: [
                if (leadingIcon != null) leadingIcon,
                const SizedBox(width: 10),
                Text("$text"),
                if (postFixIcon != null) postFixIcon,
              ],
            ),
    ),
  );
}

Widget buttonList({
  @required void Function()? onPressed,
  void Function()? onLongPressed,
  @required List<Map<String, dynamic>>? text,
  @required Color? color,
  Color textColor = WHITE,
  bool colorFill = true,
  @required BuildContext? context,
  double divideWidth = 1.0,
  bool useWidth = true,
  double buttonRadius = 10,
  double height = 40,
  double elevation = .0,
  Color backgroundcolor = BACKGROUND,
  TextStyle? textStyle,
  bool showBorder = true,
  EdgeInsetsGeometry? padding,
  bool centerItems = true,
  BorderRadiusGeometry? borderRadiusGeometry,
  ButtonStyle? style,
  Widget? icon,
}) {
  return SizedBox(
    width: useWidth ? MediaQuery.of(context!).size.width * divideWidth : null,
    height: height,
    child: ElevatedButton(
      onPressed: onPressed,
      onLongPress: onLongPressed,
      style: ElevatedButton.styleFrom(
        padding: padding,
        elevation: elevation,
        foregroundColor: textColor,
        backgroundColor: colorFill ? color : backgroundcolor,
        shape: showBorder
            ? RoundedRectangleBorder(
                side: BorderSide(color: color!),
                borderRadius:
                    borderRadiusGeometry ?? BorderRadius.circular(buttonRadius),
              )
            : null,
        textStyle: textStyle ??
            const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
      ),
      child: Row(
        mainAxisAlignment:
            centerItems ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: [
          Text('Sizes: '),
          if (text!.isNotEmpty) ...[
            for (int x = 0; x < text.length; x++) ...[
              SizedBox(width: 5),
              Row(
                children: [
                  Text('${text[x]['size']},'),
                ],
              ),
            ]
          ] else ...[
            Text('Select available size')
          ]
        ],
      ),
    ),
  );
}
