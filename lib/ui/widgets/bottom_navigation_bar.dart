import 'package:fleet/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final bool isHome;
  final bool isPortofolio;
  final bool isSupport;
  final bool isProfile;
  CustomBottomNavBar({
    required this.isHome,
    required this.isPortofolio,
    required this.isSupport,
    required this.isProfile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      width: 375,
      height: 80,
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(15))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/Vector.png",
                    width: 24,
                    height: 24,
                    color: isHome ? blueColor : greyColor,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Home",
                    style: greyTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: medium,
                        color: isHome ? blueColor : greyColor),
                  )
                ],
              ),
              Column(
                children: [
                  Image.asset("assets/Vector-1.png",
                      height: 24,
                      width: 24,
                      color: isPortofolio ? blueColor : greyColor),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Portofolio",
                    style: greyTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: medium,
                        color: isPortofolio ? blueColor : greyColor),
                  )
                ],
              ),
              Column(
                children: [
                  Image.asset("assets/Vector-2.png",
                      height: 24,
                      width: 24,
                      color: isSupport ? blueColor : greyColor),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Support",
                    style: greyTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: medium,
                        color: isSupport ? blueColor : greyColor),
                  )
                ],
              ),
              Column(
                children: [
                  Image.asset("assets/Vector-3.png",
                      height: 24,
                      width: 24,
                      color: isProfile ? blueColor : greyColor),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Profile",
                    style: greyTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: medium,
                        color: isProfile ? blueColor : greyColor),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
