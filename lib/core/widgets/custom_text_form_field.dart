import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_style.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  const CustomTextFormField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      cursorColor: AppColors.mainColor,
      decoration: InputDecoration(
        hintStyle: AppTextStyle.text15Regular.copyWith(color: Color(0xff8391A1)),
        hintText: hintText,
        filled: true,
        fillColor: AppColors.grayColor,
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: AppColors.borderColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: AppColors.mainColor)),
      ),
    );
  }
}
