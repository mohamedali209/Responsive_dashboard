import 'package:dashboard/models/transactionmodel.dart';
import 'package:dashboard/widgets/transaction_item.dart';
import 'package:flutter/cupertino.dart';

class TransctionHistoryListView extends StatelessWidget {
  const TransctionHistoryListView({super.key});

  static const items = [
    TransctionModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithdrawal: true),
    TransctionModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithdrawal: false),
    TransctionModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransctionItem(transctionModel: e)).toList(),
    );

   
  }
}
