import 'package:bookia/core/theme/app_colors.dart';
import 'package:bookia/core/widgets/app_button.dart';
import 'package:bookia/core/widgets/arrow_back_icon.dart';
import 'package:bookia/core/widgets/custom_text_form_field.dart';
import 'package:bookia/features/auth/presentation/login_screen.dart';
import 'package:bookia/features/auth/presentation/otp_verification_screen.dart';
import 'package:bookia/features/auth/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/app_text_style.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ArrowBackIcon(),
          SizedBox(
            height: 29.h,
          ),
          Text(
            "Forgot Password?",
            style: AppTextStyle.text30Regular,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Don't worry! It occurs. Please enter the email address linked with your account.",
            style: AppTextStyle.text15Regular
                .copyWith(color: AppColors.darkGrayColor),
          ),
          SizedBox(
            height: 30.h,
          ),
          CustomTextFormField(hintText: "Enter your email"),
          SizedBox(
            height: 38.h,
          ),
          AppButton(title: "Send Code",onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpVerificationScreen())),),
          Spacer(),
          CustomText(
            text1: "Remember Password? ",
            text2: "Login",
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen())),
          ),
          SizedBox(
            height: 26.h,
          ),
        ]),
      ),
    ));
  }
}
