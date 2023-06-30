import 'package:flutter/material.dart';
import 'package:ticket_ui/utils/app_styles.dart';

import '../utils/app_layout.dart';

class ThickContainer extends StatelessWidget {
  final bool? white;
  const ThickContainer({super.key, this.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppLayout.getHeight(3.0)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
          border:
              Border.all(width: AppLayout.getHeight(2.5), 
              color: white == null ? Styles.primaryColor: Colors.white)),
    );
  }
}
