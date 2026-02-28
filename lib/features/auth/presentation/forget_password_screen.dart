import 'package:bookia/core/helper/extensions.dart';
import 'package:bookia/core/routing/routes.dart';
import 'package:bookia/core/theme/app_colors.dart';
import 'package:bookia/core/widgets/app_button.dart';
import 'package:bookia/core/widgets/arrow_back_icon.dart';
import 'package:bookia/core/widgets/custom_text_form_field.dart';
import 'package:bookia/features/auth/presentation/widgets/custom_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theme/app_text_style.dart';
import '../../../gen/locale_keys.g.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ArrowBackIcon(),
          SizedBox(
            height: 29.h,
          ),
          Text(
            LocaleKeys.forgetPassword.tr(),
            style: AppTextStyle.text30Regular,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            LocaleKeys.forgetPasswordSentences.tr(),
            style: AppTextStyle.text15Regular
                .copyWith(color: AppColors.darkGrayColor),
          ),
          SizedBox(
            height: 30.h,
          ),
          CustomTextFormField(hintText: LocaleKeys.enterYourEmail.tr()),
          SizedBox(
            height: 38.h,
          ),
          AppButton(
            title: LocaleKeys.sendCode.tr(),
            onTap: () => context.pushNamed(Routes.otpVerificationScreen),
          ),
          Spacer(),
          CustomText(
            text1: LocaleKeys.rememberPassword.tr(),
            text2: LocaleKeys.login.tr(),
            onTap: () => context.pushNamedAndRemoveUntil(Routes.loginScreen),
          ),
          SizedBox(
            height: 26.h,
          ),
        ]),
      ),
    ));
  }
}
