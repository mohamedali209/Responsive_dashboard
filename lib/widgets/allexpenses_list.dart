import 'package:dashboard/models/allexpenses_item.dart';
import 'package:dashboard/utils/images.dart';
import 'package:dashboard/widgets/allexpenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensessItemsListView extends StatelessWidget {
  const AllExpensessItemsListView({super.key});

  static const items = [
     AllExpensessItemModel(
        image: Assets.ss,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
     AllExpensessItemModel(
        image: Assets.ss,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
     AllExpensessItemModel(
        image: Assets.ss,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  @override
  Widget build(BuildContext context) {
    return  Row(
           children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: AllExpensessItem(
                itemModel: item,
              ),
            ),
          );
        } else {
          return Expanded(
              child: AllExpensessItem(
            itemModel: item,
          ));
        }
      }).toList(),
    );

        
  }
}
