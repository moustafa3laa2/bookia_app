import 'package:bookia/core/helper/extensions.dart';
import 'package:bookia/core/theme/app_text_style.dart';
import 'package:bookia/core/widgets/app_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/routing/routes.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/locale_keys.g.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: Assets.images.onboardingimage.image().image,
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            children: [
              SizedBox(
                height: 135.h,
              ),
              Assets.images.logo.image(),
              SizedBox(
                height: 28.h,
              ),
              Text(
                LocaleKeys.orderYourBookNow.tr(),
                style: AppTextStyle.text20Regular,
              ),
              Spacer(),
              AppButton(
                  onTap: () => context.pushNamed(Routes.loginScreen),
                  title: LocaleKeys.login.tr()),
              SizedBox(
                height: 15.h,
              ),
              AppButton(
                onTap: () => context.pushNamed(Routes.registerScreen),
                title: LocaleKeys.register.tr(),
                isPrimary: false,
              ),
              SizedBox(
                height: 116.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
