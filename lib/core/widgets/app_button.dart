import 'package:bookia/core/theme/app_colors.dart';
import 'package:bookia/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final String title;
  final bool isPrimary;
  final void Function()? onTap;

  const AppButton(
      {super.key, required this.title, this.isPrimary = true, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 19.h),
        width: double.infinity,
        decoration: BoxDecoration(
          color: isPrimary ? AppColors.mainColor : Colors.white,
          border:
              Border.all(color: isPrimary ? AppColors.mainColor : Colors.black),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          title,
          style: AppTextStyle.text15Regular
              .copyWith(color: isPrimary ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
