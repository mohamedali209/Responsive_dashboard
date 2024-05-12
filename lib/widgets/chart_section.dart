import 'package:dashboard/utils/size_config.dart';
import 'package:dashboard/widgets/detailed_chart.dart';
import 'package:dashboard/widgets/income_chart.dart';
import 'package:dashboard/widgets/income_details.dart';
import 'package:flutter/material.dart';

class Chartsection extends StatelessWidget {
  const Chartsection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width >= SizeConfig.desktop && width < 1750
        ? Padding(
            padding: const EdgeInsets.all(10),
            child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 195),
                child: const DetailedIncomeChart()),
          )
        : const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetails())
            ],
          );
  }
}
