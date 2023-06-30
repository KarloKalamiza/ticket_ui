import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatelessWidget {
  final int sections;
  final double width;
  const LayoutBuilderWidget({super.key, required this.sections, this.width = 3.0});

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
              child: const DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}