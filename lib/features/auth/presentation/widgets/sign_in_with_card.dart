import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_style.dart';
import '../../../../gen/assets.gen.dart';

class SignInWithCard extends StatelessWidget {
  final String title;
  final String image;
  const SignInWithCard({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(image),
          SizedBox(width: 9.w,),
          Text(title,style: AppTextStyle.text15Regular.copyWith(color: AppColors.darkGrayColor),)
        ],),
    );
  }
}
