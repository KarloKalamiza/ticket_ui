import 'package:flutter/material.dart';
import 'package:ticket_ui/utils/app_layout.dart';

import '../utils/app_styles.dart';

class RowSwitchWidget extends StatelessWidget {
  final String firstText;
  final String secondText;
  const RowSwitchWidget({super.key, required this.firstText, required this.secondText});

  @override
  Widget build(BuildContext context) {
    var size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(AppLayout.getHeight(2.5)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
           AppLayout.getHeight(50)
          ),
          color: const Color(0xFFF4F6FD)
        ),
        child: Row(
          children: [
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.white),
              child: Center(child: Text(firstText)),
            ),
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(AppLayout.getHeight(50))),
                  color: Styles.bgColor),
              child: Center(child: Text(secondText)),
            ),
          ],
        ),
      ),
    );
  }
}
