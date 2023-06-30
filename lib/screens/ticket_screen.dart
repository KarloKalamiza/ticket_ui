import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_ui/utils/app_info_list.dart';
import 'package:ticket_ui/utils/app_layout.dart';
import 'package:ticket_ui/utils/app_styles.dart';
import 'package:ticket_ui/widgets/column_widget.dart';
import 'package:ticket_ui/widgets/row_switch_widget.dart';
import 'package:ticket_ui/widgets/ticket_view.dart';
import 'package:ticket_ui/widgets/white_ticket_view.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getHeight(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tickets",
                  style: Styles.headlineStyle
                      .copyWith(fontSize: AppLayout.getHeight(30)),
                ),
                Gap(AppLayout.getHeight(20)),
                const RowSwitchWidget(
                    firstText: "Upcoming", secondText: "Previous"),
                Gap(AppLayout.getHeight(20)),
                const WhiteTicket(),
                Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getHeight(15),
                  ),
                  margin: EdgeInsets.only(
                      left: AppLayout.getHeight(10),
                      right: AppLayout.getHeight(10)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const ColumnCustomWidget(
                              mainText: "Karlo", secondaryText: "Passanger"),
                          Gap(AppLayout.getHeight(5)),
                          const ColumnCustomWidget(
                            mainText: "6643 528367",
                            secondaryText: "Passport",
                            alignement: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(30)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const ColumnCustomWidget(
                              mainText: "0987654321",
                              secondaryText: "Number of E ticket"),
                          Gap(AppLayout.getHeight(5)),
                          const ColumnCustomWidget(
                            mainText: "B234B34",
                            secondaryText: "Banking code",
                            alignement: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(30)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image(
                                      image: const AssetImage(
                                          "lib/assets/images/visa.png"),
                                      width: AppLayout.getHeight(40),
                                    ),
                                    const Text(" *** 2462"),
                                  ],
                                ),
                                Gap(AppLayout.getHeight(10)),
                                Row(
                                  children: [
                                    Text(
                                      "Payment method",
                                      style: Styles.headlineStyle3,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Gap(AppLayout.getHeight(5)),
                          const ColumnCustomWidget(
                            mainText: "\$249.99",
                            secondaryText: "Price",
                            alignement: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      const SizedBox(
                        height: 1,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft:
                                  Radius.circular(AppLayout.getHeight(31)),
                              bottomRight:
                                  Radius.circular(AppLayout.getHeight(31)),
                            ),
                            color: Colors.white),
                        margin: EdgeInsets.only(
                            left: AppLayout.getHeight(15),
                            right: AppLayout.getHeight(15)),
                        padding: EdgeInsets.only(
                            top: AppLayout.getHeight(15),
                            bottom: AppLayout.getHeight(15)),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: AppLayout.getHeight(15)),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(15)),
                            child: BarcodeWidget(
                              barcode: Barcode.code128(),
                              data: 'https://github.com/martinovovo',
                              drawText: false,
                              color: Styles.textColor,
                              width: double.infinity,
                              height: 70,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(15),
            ),
            child: TicketView(tickets: ticketList[0])
          ),
          Gap(AppLayout.getHeight(30))
        ],
      ),
    );
  }
}
