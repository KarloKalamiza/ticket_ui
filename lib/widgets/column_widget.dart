import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class ColumnCustomWidget extends StatelessWidget {
  final CrossAxisAlignment alignement;
  final String mainText;
  final String secondaryText;
  const ColumnCustomWidget({super.key, required this.mainText, 
    required this.secondaryText,  this.alignement = CrossAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignement,
      children: [
        Text(
          mainText,
          style: Styles.headlineStyle3.copyWith(color: Colors.black),
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          secondaryText,
          style: Styles.headlineStyle3,
        ),
      ],
    );
  }
}
