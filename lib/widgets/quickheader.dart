import 'package:dashboard/utils/styles.dart';
import 'package:flutter/material.dart';

class QuickinvoiceHeader extends StatelessWidget {
  const QuickinvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        const Icon(
          Icons.add,
          color: Color(0xff4EB7F2),
          size: 18,
        )
      ],
    );
  }
}
