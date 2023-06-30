import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelView({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    var size = AppLayout.getSize(context);
    return Container(
      height: AppLayout.getHeight(360),
      width: size.width * 0.7,
      margin: EdgeInsets.only(right: AppLayout.getHeight(20)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
          color: Styles.primaryColor,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 2, spreadRadius: 1)
          ]),
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(20),
          vertical: AppLayout.getHeight(20)),
      child: Column(
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: 
                      AssetImage("lib/assets/images/${hotel['image']}")
                )
            ),
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            "${hotel['place']}",
            style: Styles.headlineStyle.copyWith(color: Colors.grey),
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            "${hotel['destination']}",
            style: Styles.headlineStyle.copyWith(color: Colors.white),
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            "\$${hotel['price']}/night",
            style: Styles.headlineStyle.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
