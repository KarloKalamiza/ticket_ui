import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class RowLayoutWidget extends StatelessWidget {
  final String firstText;
  final String secondText;
  const RowLayoutWidget({super.key, required this.firstText, required this.secondText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          firstText,
          style: Styles.headlineStyle2,
        ),
        Text(
          secondText,
          style: Styles.headlineStyle4,
        )
      ],
    );
  }
}
