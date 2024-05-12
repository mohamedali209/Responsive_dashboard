import 'package:dashboard/utils/styles.dart';
import 'package:dashboard/widgets/custom_background.dart';
import 'package:dashboard/widgets/custom_button.dart';
import 'package:dashboard/widgets/latest_transactionlist.dart';
import 'package:dashboard/widgets/quickheader.dart';
import 'package:dashboard/widgets/quickinvoiceform.dart';
import 'package:flutter/material.dart';

class Quickinvoiceandlatesttransaction extends StatelessWidget {
  const Quickinvoiceandlatesttransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const QuickinvoiceHeader(),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Latest Transaction',
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            height: 15,
          ),
          const LatestTransctionListView(),
          const Divider(
            color: Color(0xffF1F1F1),
          ),
          const Quickinvoiceform(),
          const Row(
            children: [
              Expanded(
                  child: CustomButton(
                background: Colors.white,
                title: 'Add more details',
                color: Color(0xff4EB7F2),
              )),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: CustomButton(
                title: 'Send Money',
              ))
            ],
          )
        ],
      ),
    );
  }
}
