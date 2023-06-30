import 'package:flutter/material.dart';
import 'package:ticket_ui/utils/app_styles.dart';

class LayoutBuilderWidget extends StatelessWidget {
  final bool? white;
  final int sections;
  final double width;
  const LayoutBuilderWidget({super.key, 
    required this.sections, this.width = 3.0,  this.white});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
            (constraints.constrainWidth() ~/ sections), 
            (index) => SizedBox(
              width: width,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: white == null ? Colors.white : Styles.primaryColor,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}