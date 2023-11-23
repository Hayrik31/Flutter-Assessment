import 'dart:math';

import 'package:flutter/material.dart';
import 'package:starbucks/core/contants/colors.dart';

class TransactionItem extends StatelessWidget {
  final String amount;
  final String date;
  final String status;

  const TransactionItem({
    Key? key,
    required this.amount,
    required this.date,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColors.transactionCardColor, // Use your predefined color
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Transform.rotate(
                    angle: pi / 4,
                    child: const Icon(
                      Icons.arrow_circle_right_outlined,
                      color: AppColors.iconColor,
                      size: 35,
                    ),
                  )),
              SizedBox(
                width: 7,
              ),
              Text(
                '$amount DH',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor, // Use your predefined color
                ),
              ),
            ],
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  status,
                  style: TextStyle(color: AppColors.textColor, fontWeight: FontWeight.bold,fontSize: 20),
                ),
                SizedBox(height: 4),
                Text(
                  date,
                  style: TextStyle(color: AppColors.textColor,fontSize: 16),
                ),
              ]),
        ],
      ),
    );
  }
}
