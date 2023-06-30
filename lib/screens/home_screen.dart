
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_ui/utils/app_info_list.dart';
import 'package:ticket_ui/utils/app_layout.dart';
import 'package:ticket_ui/utils/app_styles.dart';
import 'package:ticket_ui/widgets/hotel_view.dart';
import 'package:ticket_ui/widgets/icon_text_widget.dart';
import 'package:ticket_ui/widgets/row_layout.dart';
import 'package:ticket_ui/widgets/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Gap(AppLayout.getHeight(30)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning!",
                          style: Styles.headlineStyle3,
                        ),
                        Gap(AppLayout.getHeight(15)),
                        Text(
                          "Book tickets",
                          style: Styles.headlineStyle,
                        ),
                      ],
                    ),
                    Image(
                        height: AppLayout.getHeight(80),
                        width: AppLayout.getHeight(80),
                        image: const AssetImage("lib/assets/images/img_1.png")),
                  ],
                ),
                Gap(AppLayout.getHeight(30)),
                const IconTextWidget(
                  icon: Icon(FluentSystemIcons.ic_fluent_search_regular), 
                  text: "Search"
                ),
                Gap(AppLayout.getHeight(30)),
                const RowLayoutWidget(
                    firstText: "Upcoming flights", secondText: "View all"),
                Gap(AppLayout.getHeight(30)),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList
                        .map((tickets) => TicketView(tickets: tickets))
                        .toList(),
                  ),
                ),
                Gap(AppLayout.getHeight(30)),
                const RowLayoutWidget(
                    firstText: "Hotels", secondText: "View all"),
                Gap(AppLayout.getHeight(30)),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList
                        .map((hotel) => HotelView(hotel: hotel))
                        .toList(),
                  ),
                ),
                Gap(AppLayout.getHeight(30)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
