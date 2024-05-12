import 'package:dashboard/utils/styles.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
             Text(
              'Transaction History',
              style: AppStyles.styleSemiBold20(context),
            ),
            const Spacer(),
            Text(
              'See all',
              style: AppStyles.styleMedium16(context)
                  .copyWith(color: const Color(0xff4EB7F2)),
            ),
          ],
        ),
      ],
    );
  }
}