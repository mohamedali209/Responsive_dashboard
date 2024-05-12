
import 'package:dashboard/widgets/custom_drawer.dart';
import 'package:dashboard/widgets/mobile_layout.dart';
import 'package:flutter/material.dart';

class Tabletview extends StatelessWidget {
  const Tabletview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 239, 239),
      body: Row(
        children: [
          Expanded(child: Customdrawer()),
          SizedBox(
            width: 32,
          ),
          Expanded(flex: 2, child: Mobilelayout()),
          SizedBox(
            width: 32,
          ),
        ],
      ),
    );
  }
}
