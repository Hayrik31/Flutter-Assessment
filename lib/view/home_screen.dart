import 'package:flutter/material.dart';
import 'package:starbucks/core/contants/colors.dart';
import 'package:starbucks/view/home/widgets/balance_card.dart';
import 'package:starbucks/view/home/widgets/bottom_nav_bar.dart';
import 'package:starbucks/view/home/widgets/notfication_icon.dart';
import 'package:starbucks/view/home/widgets/transaction_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: RichText(
          text: const TextSpan(children: [
            TextSpan(
              text: 'welcome ',
              style: TextStyle(color: AppColors.whiteColor, fontSize: 20),
            ),
            TextSpan(
                text: 'Ama',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: AppColors.whiteColor)),
          ]),
        ),
        actions: [
          NotificationIcon(rightMargin: 15,),
        ],
      ),
      body: ListView(
        children: const [
          BalanceCard(),
          SizedBox(
            height: 8,
          ),
          Text(
            "Latest transactions",
            style: TextStyle(
                color: AppColors.transactionText,
                fontSize: 22,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 8,
          ),
          TransactionItem(
            amount: '200.00',
            date: 'July 05, 2023',
            status: 'Sent',
          ),
          TransactionItem(
            amount: '100.00',
            date: 'July 03, 2023',
            status: 'Sent',
          ),
        ],
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
