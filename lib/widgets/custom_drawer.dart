import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/models/userinfo_model.dart';
import 'package:dashboard/utils/images.dart';
import 'package:dashboard/widgets/drawer_item_list.dart';
import 'package:dashboard/widgets/inactive_item.dart';
import 'package:dashboard/widgets/userinfo.dart';
import 'package:flutter/material.dart';

class Customdrawer extends StatelessWidget {
  const Customdrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*.7,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
         SliverToBoxAdapter(child:  Userinfo(
            userInfoModel: UserInfoModel(
                  image:  Assets.imagesAvatar1,
                  title: 'Lekan Okeowo',
                  subTitle: 'demo@gmail.com'),
          ),),
          SliverToBoxAdapter(child: DraweritemList()),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                Inactiveitem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Log out', image: Assets.imagesLogout)),
                Inactiveitem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Settings', image: Assets.imagesSetting2)),
                        SizedBox(height: 10,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
