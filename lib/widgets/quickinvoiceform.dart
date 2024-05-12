import 'package:dashboard/widgets/customtextfield.dart';
import 'package:flutter/material.dart';

class Quickinvoiceform extends StatelessWidget {
  const Quickinvoiceform({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Customtextfield(
              title: 'Customer name',
              hint: 'Type customer name',
            )),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: Customtextfield(
              title: 'Customer Email',
              hint: 'Type customer email',
            ))
          ],
        ),
        Row(
          children: [
            Expanded(
                child: Customtextfield(
              title: 'Item name',
              hint: 'Type item name',
            )),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: Customtextfield(
              title: 'Item mount',
              hint: 'USD',
            ))
          ],
        ),
      ],
    );
  }
}
