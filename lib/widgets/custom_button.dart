import 'package:dashboard/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title,  this.color, this.background});
  final String title;
  final Color ?color,background;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          backgroundColor: background??const Color(0xFF4DB7F2),
        ),
        onPressed: () {},
        child:  Text(
          title,
          style: AppStyles.styleSemiBold18(context).copyWith(color: color??  const Color(0xFFFFFFFF),),
        ),
      ),
    );
  }
}
