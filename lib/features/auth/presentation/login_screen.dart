import 'package:bookia/core/theme/app_colors.dart';
import 'package:bookia/core/theme/app_text_style.dart';
import 'package:bookia/core/widgets/app_button.dart';
import 'package:bookia/core/widgets/arrow_back_icon.dart';
import 'package:bookia/core/widgets/custom_text_form_field.dart';
import 'package:bookia/features/auth/presentation/forget_password_screen.dart';
import 'package:bookia/features/auth/presentation/register_screen.dart';
import 'package:bookia/features/auth/presentation/widgets/custom_text.dart';
import 'package:bookia/features/auth/presentation/widgets/sign_in_with_card.dart';
import 'package:bookia/features/home/presentation/home_screen.dart';
import 'package:bookia/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../gen/assets.gen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isVisible = false;
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
                LocaleKeys.welcomeBack.tr(),
                style: AppTextStyle.text30Regular,
              ),
              SizedBox(
                height: 32.h,
              ),
              CustomTextFormField(
                keyboardType: TextInputType.emailAddress,
                hintText: LocaleKeys.enterYourEmail.tr(),
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomTextFormField(
                obscureText: !isVisible,
                keyboardType: TextInputType.visiblePassword,
                hintText: LocaleKeys.enterYourPassword.tr(),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  child: isVisible?IconButton(onPressed: (){setState(() {
                    isVisible=false;
                  });}, icon: Icon(Icons.remove_red_eye_outlined)): InkWell(onTap: (){setState(() {
                    isVisible=true;
                  });},child: SvgPicture.asset(Assets.icons.hidepassword)),
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgetPasswordScreen())),
                    child: Text(
                      LocaleKeys.forgetPassword.tr(),
                      style: AppTextStyle.text15Regular
                          .copyWith(color: AppColors.darkGrayColor),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              AppButton(title: LocaleKeys.login.tr(),onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen())),),
              SizedBox(
                height: 34.h,
              ),
              Center(
                  child: Text(
                    LocaleKeys.or.tr(),
                style: AppTextStyle.text15Regular
                    .copyWith(color: AppColors.darkGrayColor),
              )),
              SizedBox(
                height: 21.h,
              ),
              SignInWithCard(
                  title: LocaleKeys.signInWithGoogle.tr(), image: Assets.icons.google),
              SizedBox(
                height: 34.h,
              ),
              SignInWithCard(
                  title: LocaleKeys.signInWithApple.tr(), image: Assets.icons.apple),
              Spacer(),
              CustomText(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterScreen())),
                  text1: LocaleKeys.doNotHaveAccount.tr(),
                  text2: LocaleKeys.registerNow.tr()),
              SizedBox(
                height: 19.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
