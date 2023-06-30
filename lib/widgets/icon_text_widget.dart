import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class IconTextWidget extends StatelessWidget {
  final String text;
  final Icon icon;
  const IconTextWidget({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppLayout.getHeight(20))),
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getHeight(10),
        vertical: AppLayout.getHeight(10),
      ),
      child: Row(
        children: [
          icon,
          Gap(AppLayout.getHeight(10)),
          Text(
            text,
            style: Styles.headlineStyle3,
          )
        ],
      ),
    );
  }
}
