import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_ui/utils/app_layout.dart';
import 'package:ticket_ui/widgets/column_widget.dart';
import 'package:ticket_ui/widgets/row_layout.dart';

import '../utils/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(15),
            vertical: AppLayout.getHeight(15)),
        children: [
          Gap(AppLayout.getHeight(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    width: AppLayout.getHeight(100),
                    height: AppLayout.getHeight(100),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("lib/assets/images/img_1.png")),
                    ),
                  )
                ],
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Book tickets",
                    style: Styles.headlineStyle,
                  ),
                  Gap(AppLayout.getHeight(5)),
                  Text(
                    "New York",
                    style: Styles.headlineStyle4,
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Styles.primaryColor),
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getHeight(5),
                            vertical: AppLayout.getHeight(5)),
                        child: const Icon(
                          FluentSystemIcons.ic_fluent_shield_filled,
                          color: Colors.white,
                        ),
                      ),
                      Gap(AppLayout.getHeight(10)),
                      Text(
                        "Premium status",
                        style: Styles.headlineStyle3
                            .copyWith(color: Colors.grey.shade700),
                      ),
                    ],
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Text(
                    "Edit",
                    style: Styles.headlineStyle4,
                  ),
                  Gap(AppLayout.getHeight(60)),
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Stack(
            children: [
Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                color: Styles.primaryColor),
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(18),
                vertical: AppLayout.getHeight(18)),
            child: Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(15),
                      vertical: AppLayout.getHeight(15)),
                  child: const Icon(
                    FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                  ),
                ),
                Gap(AppLayout.getHeight(10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "You've got a new award.",
                      style:
                          Styles.headlineStyle2.copyWith(color: Colors.white),
                    ),
                    Gap(AppLayout.getHeight(5)),
                    Text(
                      "You have 95 flights this year",
                      style:
                          Styles.headlineStyle3.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: AppLayout.getHeight(-35),
            right: AppLayout.getHeight(-40),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(30)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                border: Border.all(
                    width: AppLayout.getHeight(15), color: Colors.purple),
              ),
            ),
          )
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          const RowLayoutWidget(firstText: "Accumudated miles", secondText: ""),
          Gap(AppLayout.getHeight(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "192802",
                style: Styles.headlineStyle.copyWith(
                  fontSize: AppLayout.getHeight(50)
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(30)),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(10)
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accured",
                      style: Styles.headlineStyle3,
                    ),
                    Text(
                      "11 June 2023",
                      style: Styles.headlineStyle3,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnCustomWidget(
                      mainText: "23 042", 
                      secondaryText: "Miles"
                    ),
                    ColumnCustomWidget(
                      mainText: "Airline CO", 
                      secondaryText: "Received from",
                      alignement: CrossAxisAlignment.end,
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnCustomWidget(
                      mainText: "24", 
                      secondaryText: "Miles"
                    ),
                    ColumnCustomWidget(
                      mainText: "McDonald's", 
                      secondaryText: "Received from",
                      alignement: CrossAxisAlignment.end,
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnCustomWidget(
                      mainText: "52340", 
                      secondaryText: "Miles"
                    ),
                    ColumnCustomWidget(
                      mainText: "Karlo", 
                      secondaryText: "Received from",
                      alignement: CrossAxisAlignment.end,
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "How to get more miles",
                      style: Styles.headlineStyle3.copyWith(color: Colors.blue),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(60)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
