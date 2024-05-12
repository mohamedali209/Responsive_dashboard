import 'package:dashboard/widgets/allexpenses_section.dart';
import 'package:dashboard/widgets/custom_drawer.dart';
import 'package:dashboard/widgets/income_section.dart';
import 'package:dashboard/widgets/mycard_section.dart';
import 'package:flutter/material.dart';

class Desktopview extends StatelessWidget {
  const Desktopview({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Row(
        children: [
          Expanded(flex: 1, child: Customdrawer()),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 3,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(flex: 2, child: Allexpensessection()),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Mycard(),
                            SizedBox(
                              height: 12,
                            ),
                            Incomesection(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
