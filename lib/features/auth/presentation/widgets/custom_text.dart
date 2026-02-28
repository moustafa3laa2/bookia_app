import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_style.dart';

class CustomText extends StatelessWidget {
  final String text1;
  final String text2;
  final void Function()? onTap;
  const CustomText(
      {super.key, required this.text1, required this.text2, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "$text1 ",
          style: AppTextStyle.text15Regular,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            text2,
            style:
                AppTextStyle.text15Regular.copyWith(color: AppColors.mainColor),
          ),
        ),
      ],
    );
  }
}
