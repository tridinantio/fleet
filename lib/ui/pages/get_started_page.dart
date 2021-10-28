// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fleet/shared/theme.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  height: 322,
                  width: MediaQuery.of(context).size.width - (2 * 12),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/image 1.png"),
                          fit: BoxFit.cover))),
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width - (2 * 30),
                decoration: BoxDecoration(
                    color: whiteColor, borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 33,
                    ),
                    Text(
                      "Welcome!",
                      style: blackTextStyle.copyWith(
                          fontWeight: semiBold, fontSize: 24),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 27),
                      child: Text(
                        "Welcome to Fleet Finance, the easy way to improve your finances and help you control expenses and income",
                        style: darkGreyTextStyle.copyWith(
                          fontSize: 13,
                          fontWeight: regular,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Container(
                      width: 153,
                      height: 59,
                      decoration: BoxDecoration(
                          color: blueColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          child: Text(
                            "Get Started",
                            style: whiteTextStyle.copyWith(
                                fontWeight: semiBold, fontSize: 14),
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
