import 'package:dashboard/models/userinfo_model.dart';
import 'package:dashboard/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Userinfo extends StatelessWidget {
  const Userinfo({
    super.key, required this.userInfoModel,
  });

 final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(userInfoModel.image),
      title: Text(
        userInfoModel.title,
        style: AppStyles.styleSemiBold16(context),
      ),
      subtitle: Text(
        userInfoModel.subTitle,
        style: AppStyles.styleRegular12(context),
      ),
    );
  }
}
