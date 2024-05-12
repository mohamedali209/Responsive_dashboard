import 'package:dashboard/widgets/customdot.dart';
import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => const Padding(
          padding: EdgeInsets.only(right: 6),
          child: CustomDotIndicator(isActive: false),
        ),
      ),
    );
  }
}