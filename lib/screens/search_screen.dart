import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_ui/utils/app_layout.dart';
import 'package:ticket_ui/utils/app_styles.dart';
import 'package:ticket_ui/widgets/icon_text_widget.dart';
import 'package:ticket_ui/widgets/row_layout.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            Container(
              padding:
                  EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(AppLayout.getHeight(30)),
                  Text(
                    "What are\n you looking for?",
                    style: Styles.headlineStyle.copyWith(fontSize: 36),
                    textAlign: TextAlign.start,
                  ),
                  Gap(AppLayout.getHeight(30)),
                  Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(2.5)),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(30)),
                      color: const Color(0xFFF4F6FD),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: size.width * 0.44,
                          padding: EdgeInsets.symmetric(
                              vertical: AppLayout.getHeight(10)),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.horizontal(
                                  left:
                                      Radius.circular(AppLayout.getHeight(50))),
                              color: Colors.white),
                          child: const Center(child: Text("Airline tickets")),
                        ),
                        Container(
                          width: size.width * 0.44,
                          padding: EdgeInsets.symmetric(
                              vertical: AppLayout.getHeight(10)),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.horizontal(
                                  right:
                                      Radius.circular(AppLayout.getHeight(50))),
                              color: Styles.bgColor),
                          child: const Center(child: Text("Hotels")),
                        ),
                      ],
                    ),
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const IconTextWidget(
                      icon: Icon(Icons.flight_takeoff), text: "Departure"),
                  Gap(AppLayout.getHeight(10)),
                  const IconTextWidget(
                      icon: Icon(Icons.flight_land), text: "Arrival"),
                  Gap(AppLayout.getHeight(20)),
                  Container(
                    padding: EdgeInsets.only(
                      top: AppLayout.getHeight(15),
                      bottom: AppLayout.getHeight(15),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(10))),
                    child: Center(
                      child: Text(
                        "Find tickets",
                        style:
                            Styles.headlineStyle2.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const RowLayoutWidget(
                      firstText: "Upcoming flights", secondText: "View all"),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(300),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12)),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getHeight(15),
                            vertical: AppLayout.getHeight(15)),
                        child: Column(
                          children: [
                            Container(
                              height: AppLayout.getHeight(150),
                              width: AppLayout.getHeight(150),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    AppLayout.getHeight(20)),
                                color: Colors.white,
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "lib/assets/images/sit.jpg")),
                              ),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              "20% discount on the booking of tis flight.",
                              style: Styles.headlineStyle3,
                            ),
                            Text(
                              "Don't miss out this chance.",
                              style: Styles.headlineStyle3,
                            ),
                          ],
                        ),
                      ),
                      Gap(AppLayout.getHeight(10)),
                      Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: AppLayout.getHeight(145),
                                width: size.width * 0.44,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(
                                        AppLayout.getHeight(20))),
                                padding: EdgeInsets.symmetric(
                                    horizontal: AppLayout.getHeight(15),
                                    vertical: AppLayout.getHeight(15)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Discount\nfor survey",
                                      style: Styles.headlineStyle2.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Gap(AppLayout.getHeight(10)),
                                    Text(
                                        "Take the survey about our servicess and get discount",
                                        style: Styles.headlineStyle4
                                            .copyWith(color: Colors.white)),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: AppLayout.getHeight(-45),
                                right: AppLayout.getHeight(-40),
                                child: Container(
                                  padding:
                                      EdgeInsets.all(AppLayout.getHeight(30)),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          width: AppLayout.getHeight(15),
                                          color: const Color(0xFF189999)),
                                      color: Colors.transparent),
                                ),
                              )
                            ],
                          ),
                          Gap(AppLayout.getHeight(10)),
                          Container(
                            width: size.width * 0.44,
                            height: AppLayout.getHeight(145),
                            decoration: BoxDecoration(
                                color: Styles.orangeColor,
                                borderRadius: BorderRadius.circular(
                                    AppLayout.getHeight(20))),
                            padding: EdgeInsets.symmetric(
                                horizontal: AppLayout.getHeight(15),
                                vertical: AppLayout.getHeight(15)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Take love",
                                  style: Styles.headlineStyle2.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                                Gap(AppLayout.getHeight(30)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("😍",
                                        style: Styles.headlineStyle4.copyWith(
                                            color: Colors.white, fontSize: 30)),
                                    Text("😊",
                                        style: Styles.headlineStyle4.copyWith(
                                            color: Colors.white, fontSize: 30)),
                                    Text("😘",
                                        style: Styles.headlineStyle4.copyWith(
                                            color: Colors.white, fontSize: 30)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(10)),
                ],
              ),
            )
          ],
        ));
  }
}
