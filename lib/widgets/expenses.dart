import 'package:dashboard/widgets/allexpenses_list.dart';
import 'package:dashboard/widgets/custom_background.dart';
import 'package:dashboard/widgets/expenses_header.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 20,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ExpensesHeader(title: 'All Expenses',), AllExpensessItemsListView()]),
    );
  }
}


