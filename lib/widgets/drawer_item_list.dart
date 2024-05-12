

import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/utils/images.dart';
import 'package:dashboard/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DraweritemList extends StatefulWidget {
  const DraweritemList({super.key});

  @override
  State<DraweritemList> createState() => _DraweritemListState();
}

int activeindex = 0;

class _DraweritemListState extends State<DraweritemList> {
  final List<DrawerItemModel> items = [
    const DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    const DrawerItemModel(
        title: 'My transaction', image: Assets.imagesTransaction),
    const DrawerItemModel(title: 'Statics', image: Assets.imagesStat),
    const DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWallet2),
    const DrawerItemModel(
        title: 'My Investments', image: Assets.imagesInvestment),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () {
              if (activeindex != index) {
                setState(() {
                  activeindex = index;
                });
              }
            },
            child: Draweritem(
              drawerItemModel: items[index],
              isactive: activeindex==index,
            ));
      },
    );
  }
}
