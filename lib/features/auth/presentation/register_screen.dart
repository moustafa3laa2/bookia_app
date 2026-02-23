import 'package:bookia/core/widgets/app_button.dart';
import 'package:bookia/core/widgets/arrow_back_icon.dart';
import 'package:bookia/core/widgets/custom_text_form_field.dart';
import 'package:bookia/features/auth/presentation/login_screen.dart';
import 'package:bookia/features/auth/presentation/widgets/custom_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/app_text_style.dart';
import '../../../gen/locale_keys.g.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ArrowBackIcon(),
            SizedBox(
              height: 29.h,
            ),
            Text(
              LocaleKeys.helloRegister.tr(),
              style: AppTextStyle.text30Regular,
            ),
            SizedBox(
              height: 32.h,
            ),
            CustomTextFormField(
              hintText: LocaleKeys.userName.tr(),
            ),
            SizedBox(
              height: 11.h,
            ),
            CustomTextFormField(
              hintText: LocaleKeys.email.tr(),
            ),
            SizedBox(
              height: 11.h,
            ),
            CustomTextFormField(
              hintText: LocaleKeys.password.tr(),
            ),
            SizedBox(
              height: 11.h,
            ),
            CustomTextFormField(
              hintText: LocaleKeys.confirmPassword.tr(),
            ),
            SizedBox(
              height: 30.h,
            ),
            AppButton(
              title: LocaleKeys.register.tr(),
            ),
            Spacer(),
            CustomText(
                text1: LocaleKeys.alreadyHaveAccount.tr(),
                text2: LocaleKeys.loginNow.tr(),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()))),
            SizedBox(
              height: 27.h,
            ),
          ],
        ),
      )),
    );
  }
}
