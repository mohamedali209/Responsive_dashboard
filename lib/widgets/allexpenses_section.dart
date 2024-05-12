import 'package:dashboard/widgets/custom_background.dart';
import 'package:dashboard/widgets/expenses.dart';
import 'package:dashboard/widgets/quickinvoiceandtransaction.dart';
import 'package:flutter/material.dart';

class Allexpensessection extends StatelessWidget {
  const Allexpensessection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(
          height: 10,
        ),
        CustomBackgroundContainer(
          child: Column(
            children: [
              Quickinvoiceandlatesttransaction(),
            ],
          ),
        ),
      ],
    );
  }
}
