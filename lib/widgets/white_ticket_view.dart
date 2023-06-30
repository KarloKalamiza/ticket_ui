import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_ui/widgets/thick_container.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import 'layout_builder_widget.dart';

class WhiteTicket extends StatelessWidget {
  const WhiteTicket({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.90,
      child: Container(
        padding: EdgeInsets.only(
          left: AppLayout.getHeight(10),
          right: AppLayout.getHeight(10),
          top: AppLayout.getHeight(10)
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(10))
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(21)),
                      topRight: Radius.circular(AppLayout.getHeight(21)))),
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(15),
                  vertical: AppLayout.getHeight(10)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "NYC",
                        style: Styles.headlineStyle2
                            .copyWith(color: Styles.primaryColor),
                      ),
                      const Spacer(),
                      const ThickContainer(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: const LayoutBuilderWidget(sections: 6, white: true,),
                            ),
                            Center(
                                child: Icon(
                              FluentSystemIcons.ic_fluent_airplane_filled,
                              color: Styles.primaryColor,
                            ))
                          ],
                        ),
                      ),
                      const ThickContainer(),
                      const Spacer(),
                      Text(
                        "LDN",
                        style: Styles.headlineStyle2
                            .copyWith(color: Styles.primaryColor),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(
                            "New york",
                            style: Styles.headlineStyle3
                                .copyWith(color: Styles.primaryColor),
                          )),
                      Text(
                        "8H 30M",
                        style: Styles.headlineStyle3
                            .copyWith(color: Styles.primaryColor),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(
                            "London",
                            style: Styles.headlineStyle3
                                .copyWith(color: Styles.primaryColor),
                            textAlign: TextAlign.end,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                      bottomRight: Radius.circular(AppLayout.getHeight(21)))),
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(15),
                  vertical: AppLayout.getHeight(10)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(AppLayout.getHeight(80)),
                        child: Text(
                          "1 MAY",
                          style: Styles.headlineStyle2
                              .copyWith(color: Styles.primaryColor),
                        ),
                      ),
                      Text(
                        "08:30 AM",
                        style: Styles.headlineStyle2
                            .copyWith(color: Styles.primaryColor),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(AppLayout.getHeight(80)),
                        child: Text(
                          "23",
                          style: Styles.headlineStyle2
                              .copyWith(color: Styles.primaryColor),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: AppLayout.getWidth(AppLayout.getHeight(80)),
                          child: Text(
                            "Date",
                            style: Styles.headlineStyle3
                                .copyWith(color: Styles.primaryColor),
                          )),
                      Text(
                        "Departure time",
                        style: Styles.headlineStyle3
                            .copyWith(color: Styles.primaryColor),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                          width: AppLayout.getWidth(AppLayout.getHeight(80)),
                          child: Text(
                            "Number",
                            style: Styles.headlineStyle3
                                .copyWith(color: Styles.primaryColor),
                            textAlign: TextAlign.end,
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
