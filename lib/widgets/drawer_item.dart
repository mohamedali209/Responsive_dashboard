import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/widgets/active_item.dart';
import 'package:dashboard/widgets/inactive_item.dart';
import 'package:flutter/material.dart';

class Draweritem extends StatelessWidget {
  const Draweritem({super.key, required this.drawerItemModel, required this.isactive});
  final DrawerItemModel drawerItemModel;
  final bool isactive;
  @override
  Widget build(BuildContext context) {
    return isactive?Activeitem(drawerItemModel: drawerItemModel): Inactiveitem(drawerItemModel: drawerItemModel);
  }
}

