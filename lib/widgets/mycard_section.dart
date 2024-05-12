import 'package:dashboard/utils/styles.dart';
import 'package:dashboard/widgets/card.dart';
import 'package:dashboard/widgets/custom_background.dart';
import 'package:dashboard/widgets/dotsindicator.dart';
import 'package:dashboard/widgets/transaction_header.dart';
import 'package:dashboard/widgets/transaction_itemlistview.dart';
import 'package:flutter/material.dart';

class Mycard extends StatelessWidget {
  const Mycard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My card',
            style: AppStyles.styleSemiBold20(context),
          ),
          const SizedBox(
            height: 20,
          ),
          const CreditCard(),
          const SizedBox(
            height: 19,
          ),
          const DotsIndicator(),
          const Divider(
            color: Color(0xffF1F1F1),
          ),
          const SizedBox(
            height: 20,
          ),
          const TransactionHistory(),
          const SizedBox(
            height: 16,
          ),
          Text(
            '13 April 2022',
            style: AppStyles.styleMedium16(context)
                .copyWith(color: const Color(0xffAAAAAA)),
          ),
          const TransctionHistoryListView()
        ],
      ),
    );
  }
}
