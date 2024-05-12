import 'package:dashboard/utils/styles.dart';
import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield({
    super.key, required this.title, required this.hint,
  });
  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        TextField(
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: AppStyles.styleRegular16(context).copyWith(
                color: const Color(0xFFAAAAAA),
              ),
              fillColor: const Color(0xFFFAFAFA),
              filled: true,
              border: buildBorder(),
              enabledBorder: buildBorder(),
              focusedBorder: buildBorder()),
        )
      ],
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xFFFAFAFA),
      ),
    );
  }
}
