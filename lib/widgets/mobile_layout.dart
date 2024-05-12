import 'package:dashboard/utils/size_config.dart';
import 'package:dashboard/widgets/allexpenses_section.dart';
import 'package:dashboard/widgets/custom_drawer.dart';
import 'package:dashboard/widgets/income_section.dart';
import 'package:dashboard/widgets/mycard_section.dart';
import 'package:flutter/material.dart';

class Mobilelayout extends StatefulWidget {
  const Mobilelayout({
    super.key,
  });

  @override
  State<Mobilelayout> createState() => _MobilelayoutState();
}

class _MobilelayoutState extends State<Mobilelayout> {
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:
          MediaQuery.of(context).size.width < SizeConfig.tablet ? const Customdrawer() : null,
      key: scaffoldkey,
      appBar: MediaQuery.of(context).size.width < SizeConfig.tablet
          ? AppBar(
              leading: IconButton(
                  onPressed: () {
                    scaffoldkey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Allexpensessection(),
            SizedBox(
              height: 24,
            ),
            Mycard(),
            SizedBox(
              height: 24,
            ),
            Incomesection()
          ],
        ),
      ),
    );
  }
}
