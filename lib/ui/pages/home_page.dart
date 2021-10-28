// ignore_for_file: prefer_const_constructors

import 'package:fleet/shared/theme.dart';
import 'package:fleet/ui/widgets/bottom_navigation_bar.dart';
import 'package:fleet/ui/widgets/transaction_history_card.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome,",
                            style: darkGreyTextStyle.copyWith(
                                fontSize: 13, fontWeight: medium),
                          ),
                          Text(
                            "Enna Santana 👋",
                            style: blackTextStyle.copyWith(
                                fontSize: 18, fontWeight: bold),
                          ),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        // ignore: prefer_const_constructors
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(15)),
                        child: Image.asset(
                          'assets/image 4.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Container(
                    height: 170,
                    width: MediaQuery.of(context).size.width - (2 * 30),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Mask Group.png"))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("My saving",
                            style: whiteTextStyle.copyWith(
                              fontWeight: regular,
                              fontSize: 13,
                            )),
                        SizedBox(height: 12),
                        Text("Rp. 10.000.000",
                            style: whiteTextStyle.copyWith(
                              fontWeight: semiBold,
                              fontSize: 24,
                            )),
                        SizedBox(height: 10),
                        LinearPercentIndicator(
                          alignment: MainAxisAlignment.center,
                          width: MediaQuery.of(context).size.width - (2 * 46),
                          lineHeight: 3.0,
                          percent: 0.5,
                          progressColor: Color(0xff102693),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Text(
                          "Rp. 10.000.000/Rp. 40.000.000",
                          style: whiteTextStyle.copyWith(
                              fontSize: 10, fontWeight: medium),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 56,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 145,
                        decoration: BoxDecoration(
                            color: blackColor,
                            borderRadius: BorderRadius.circular(15)),
                        child: TextButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/Arrow - Top.png',
                                  width: 24,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Save Money",
                                    style: whiteTextStyle.copyWith(
                                        fontWeight: medium, fontSize: 13),
                                  ),
                                )
                              ],
                            )),
                      ),
                      Container(
                        height: 60,
                        width: 145,
                        decoration: BoxDecoration(
                            color: blackColor,
                            borderRadius: BorderRadius.circular(15)),
                        child: TextButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/Scan - 2.png',
                                  width: 24,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Pay",
                                    style: whiteTextStyle.copyWith(
                                        fontWeight: medium, fontSize: 13),
                                  ),
                                )
                              ],
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 34,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                children: [
                  Text(
                    "Transaction History",
                    style: blackTextStyle.copyWith(
                        fontSize: 18, fontWeight: semiBold),
                  ),
                  SizedBox(
                    height: 31,
                  ),
                  TransactionHistoryCard(
                    name: "Success!",
                    value: "+30.000",
                    imageUrl: "assets/Group 2.png",
                    date: "February 19, 03:25 PM",
                  ),
                  TransactionHistoryCard(
                    name: "Coffee",
                    value: "-20.000",
                    imageUrl: "assets/Group 4.png",
                    date: "February 19, 03:25 PM",
                  ),
                  TransactionHistoryCard(
                    name: "Tokopedia",
                    value: "-390.000",
                    imageUrl: "assets/Group 4.png",
                    date: "February 19, 03:25 PM",
                  ),
                  TransactionHistoryCard(
                    name: "Success!",
                    value: "+230.000",
                    imageUrl: "assets/Group 2.png",
                    date: "February 19, 03:25 PM",
                  ),
                  TransactionHistoryCard(
                    name: "Success!",
                    value: "+360.000",
                    imageUrl: "assets/Group 2.png",
                    date: "February 19, 03:25 PM",
                  ),
                  TransactionHistoryCard(
                    name: "Shopee",
                    value: "-360.000",
                    imageUrl: "assets/Group 4.png",
                    date: "February 19, 03:25 PM",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        isHome: true,
        isPortofolio: false,
        isProfile: false,
        isSupport: false,
      ),
    );
  }
}
