import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_ui/utils/app_layout.dart';
import 'package:ticket_ui/widgets/layout_builder_widget.dart';
import 'package:ticket_ui/widgets/thick_container.dart';

import '../utils/app_styles.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> tickets;
  const TicketView({super.key, required this.tickets});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width * 0.85,
      child: Container(
        padding: EdgeInsets.all(AppLayout.getHeight(10)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Styles.primaryColor,
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
                        "${tickets['from']['code']}",
                        style:
                            Styles.headlineStyle2.copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      const ThickContainer(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: const LayoutBuilderWidget(sections: 6),
                            ),
                            const Center(
                                child: Icon(
                              FluentSystemIcons.ic_fluent_airplane_filled,
                              color: Colors.white,
                            ))
                          ],
                        ),
                      ),
                      const ThickContainer(),
                      const Spacer(),
                      Text(
                        "${tickets['to']['code']}",
                        style:
                            Styles.headlineStyle2.copyWith(color: Colors.white),
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
                            "${tickets['from']['name']}",
                            style: Styles.headlineStyle3
                                .copyWith(color: Colors.white),
                          )),
                      Text(
                        "${tickets['flying_time']}",
                        style:
                            Styles.headlineStyle3.copyWith(color: Colors.white),
                            textAlign: TextAlign.center,
                      ),
                      SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(
                            "${tickets['to']['name']}",
                            style: Styles.headlineStyle3
                                .copyWith(color: Colors.white),
                            textAlign: TextAlign.end,
                          )),
                    ],
                  ),
                ],
              ),
            ),
      
            Container(
              decoration: BoxDecoration(
                  color: Styles.orangeColor,
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
                          "${tickets['date']}",
                          style:
                              Styles.headlineStyle2.copyWith(color: Colors.white),
                        ),
                      ),
                      Text(
                        "${tickets['departure_time']}",
                        style:
                            Styles.headlineStyle2.copyWith(color: Colors.white),
                            textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(AppLayout.getHeight(80)),
                        child: Text(
                          "${tickets['number']}",
                          style:
                              Styles.headlineStyle2.copyWith(color: Colors.white),
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
                                .copyWith(color: Colors.white),
                          )),
                      Text(
                        "Departure time",
                        style:
                            Styles.headlineStyle3.copyWith(color: Colors.white),
                            textAlign: TextAlign.center,
                      ),
                      SizedBox(
                          width: AppLayout.getWidth(AppLayout.getHeight(80)),
                          child: Text(
                            "Number",
                            style: Styles.headlineStyle3
                                .copyWith(color: Colors.white),
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
