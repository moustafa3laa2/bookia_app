import 'package:bookia/core/helper/extensions.dart';
import 'package:bookia/core/routing/routes.dart';
import 'package:bookia/core/widgets/app_button.dart';
import 'package:bookia/core/widgets/arrow_back_icon.dart';
import 'package:bookia/features/auth/presentation/widgets/custom_text.dart';
import 'package:bookia/features/auth/presentation/widgets/otp_row.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_style.dart';
import '../../../gen/locale_keys.g.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ArrowBackIcon(),
              SizedBox(
                height: 29.h,
              ),
              Text(
                LocaleKeys.otpVerify.tr(),
                style: AppTextStyle.text30Regular,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                LocaleKeys.otpSentences.tr(),
                style: AppTextStyle.text15Regular
                    .copyWith(color: AppColors.darkGrayColor),
              ),
              SizedBox(
                height: 35.h,
              ),
              OtpRow(),
              SizedBox(
                height: 35.h,
              ),
              AppButton(
                title: LocaleKeys.verify.tr(),
                onTap: () => context.pushNamed(Routes.passwordChangedScreen),
              ),
              Spacer(),
              CustomText(
                  text1: LocaleKeys.didNotReceivedCode.tr(),
                  text2: LocaleKeys.resend.tr()),
              SizedBox(
                height: 26.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
