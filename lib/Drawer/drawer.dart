import 'package:flutter/material.dart';
import '../../specs/colors.dart';
import '../../specs/styles.dart';

Widget drawerWidget({
  required BuildContext context,
  required void Function(String item) onItem,
}) {
  return Container(
    width: 254,
    height: 812,
    child: Drawer(
      backgroundColor: Color.fromARGB(80, 0, 0, 0),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Column(
          children: [
            const SizedBox(height: 5),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        // TextSpan(
                        //   text: "Settings ",
                        // ),
                        WidgetSpan(
                          child: Icon(Icons.settings, size: 17),
                        ),
                        TextSpan(
                          text: " General",
                          style: TextStyle(
                            fontSize: 13,
                            color: BLACK,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            _drawerItems(
              context: context,
              titleLeadingIcon:
                  const Icon(Icons.admin_panel_settings, color: WHITE),
              title: "Edit Profile",
              barHeight: 50,
              subtitles: [],
              onItem: (item) => onItem(item),
            ),
            const SizedBox(height: 10),
            _drawerItems(
              context: context,
              titleLeadingIcon: const Icon(Icons.notifications, color: WHITE),
              title: "Notifications",
              barHeight: 50,
              subtitles: [],
              onItem: (item) => onItem(item),
            ),
            const SizedBox(height: 10),
            _drawerItems(
              context: context,
              titleLeadingIcon: const Icon(Icons.payment_rounded, color: WHITE),
              title: "Payments",
              barHeight: 50,
              subtitles: [],
              onItem: (item) => onItem(item),
            ),
            const SizedBox(height: 10),
            _drawerItems(
              context: context,
              titleLeadingIcon: const Icon(Icons.privacy_tip, color: WHITE),
              title: "Policy Privacy",
              barHeight: 50,
              subtitles: [],
              onItem: (item) => onItem(item),
            ),
            const SizedBox(height: 10),
            _drawerItems(
              context: context,
              titleLeadingIcon:
                  const Icon(Icons.help_center_outlined, color: WHITE),
              title: "Help Center",
              barHeight: 50,
              subtitles: [],
              onItem: (item) => onItem(item),
            ),
            _drawerItems(
              context: context,
              titleLeadingIcon: const Icon(Icons.logout_rounded, color: WHITE),
              title: "Logout",
              barHeight: 0,
              subtitles: [],
              onItem: (item) => onItem(item),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    ),
  );
}

Widget _drawerItems(
    {required Widget titleLeadingIcon,
    required String title,
    required List<String> subtitles,
    required void Function(String item) onItem,
    BuildContext? context,
    double barHeight = 50}) {
  return Column(
    children: [
      Container(
        height: 32,
        width: 217,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.transparent,
        ),
        child: Row(
          children: [
            titleLeadingIcon,
            const SizedBox(width: 10),
            Text(title, style: h4White),
          ],
        ),
      ),
      const SizedBox(height: 10),
      Container(
        color: WHITE,
        child: Row(
          children: [
            const SizedBox(width: 10),
            Container(
              height: barHeight,
              color: WHITE,
              width: 3,
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var subtitle in subtitles) ...[
                  GestureDetector(
                    onTap: () => onItem(subtitle.toLowerCase()),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        // color: BACKGROUND,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      height: 40,
                      width: 235,
                      child: Text(
                        subtitle,
                        style: h3White,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
      )
    ],
  );
}
