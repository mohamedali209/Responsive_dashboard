import 'package:dashboard/widgets/chart_section.dart';
import 'package:dashboard/widgets/custom_background.dart';
import 'package:dashboard/widgets/expenses_header.dart';
import 'package:flutter/material.dart';

class Incomesection extends StatelessWidget {
  const Incomesection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpensesHeader(title: 'Income'),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Chartsection(),
          )
        ],
      ),
    );
  }
}