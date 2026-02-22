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
import '../../../gen/assets.gen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                "Welcome back! Glad to see you, Again!",
                style: AppTextStyle.text30Regular,
              ),
              SizedBox(
                height: 32.h,
              ),
              CustomTextFormField(
                hintText: "Enter Your Email",
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomTextFormField(
                hintText: "Enter your password",
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
                      "Forgot Password?",
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
                "Or",
                style: AppTextStyle.text15Regular
                    .copyWith(color: AppColors.darkGrayColor),
              )),
              SizedBox(
                height: 21.h,
              ),
              SignInWithCard(
                  title: "Sign in with Google", image: Assets.icons.google),
              SizedBox(
                height: 34.h,
              ),
              SignInWithCard(
                  title: "Sign in with Apple", image: Assets.icons.apple),
              Spacer(),
              CustomText(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterScreen())),
                  text1: "Don’t have an account? ",
                  text2: "Register Now"),
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
