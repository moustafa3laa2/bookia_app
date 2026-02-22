import 'package:bookia/core/widgets/app_button.dart';
import 'package:bookia/core/widgets/arrow_back_icon.dart';
import 'package:bookia/features/auth/presentation/password_changed_screen.dart';
import 'package:bookia/features/auth/presentation/widgets/custom_text.dart';
import 'package:bookia/features/auth/presentation/widgets/otp_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_style.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

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
                "OTP Verification",
                style: AppTextStyle.text30Regular,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Enter the verification code we just sent on your email address.",
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
              AppButton(title: "Verify",onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>PasswordChangedScreen())),),
              Spacer(),
              CustomText(text1: "Didn’t received code? ", text2: "Resend"),
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
