import 'package:fleet/shared/theme.dart';
import 'package:flutter/material.dart';

class TransactionHistoryCard extends StatelessWidget {
  final String name, value, imageUrl, date;
  TransactionHistoryCard(
      {required this.name,
      required this.date,
      required this.imageUrl,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                imageUrl,
                width: 30,
              ),
              SizedBox(
                width: 11,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: blackTextStyle.copyWith(
                        fontSize: 13, fontWeight: semiBold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    date,
                    style: greyTextStyle.copyWith(
                        fontSize: 10, fontWeight: semiBold),
                  ),
                ],
              ),
            ],
          ),
          Text(
            value,
            style: blackTextStyle.copyWith(fontSize: 13, fontWeight: bold),
          )
        ],
      ),
    );
  }
}
