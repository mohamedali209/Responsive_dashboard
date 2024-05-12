import 'package:dashboard/utils/styles.dart';
import 'package:flutter/material.dart';

class ExpensesHeader extends StatelessWidget {
  const ExpensesHeader({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyles.styleSemiBold20(context),
        ),
        Row(
          children: [
            Text(
              'Monthly',
              style: AppStyles.styleSemiBold16(context),
            ),
            const SizedBox(
              width: 5,
            ),
            const Icon(
              Icons.arrow_downward,
              color: Color(0xff064061),
            ),
          ],
        )
      ],
    );
  }
}
