import 'package:bookia/core/widgets/app_button.dart';
import 'package:bookia/core/widgets/arrow_back_icon.dart';
import 'package:bookia/core/widgets/custom_text_form_field.dart';
import 'package:bookia/features/auth/presentation/login_screen.dart';
import 'package:bookia/features/auth/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/app_text_style.dart';

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
              "Hello! Register to get started",
              style: AppTextStyle.text30Regular,
            ),
            SizedBox(
              height: 32.h,
            ),
            CustomTextFormField(
              hintText: "Username",
            ),
            SizedBox(
              height: 11.h,
            ),
            CustomTextFormField(
              hintText: "Email",
            ),
            SizedBox(
              height: 11.h,
            ),
            CustomTextFormField(
              hintText: "Password",
            ),
            SizedBox(
              height: 11.h,
            ),
            CustomTextFormField(
              hintText: "Confirm password",
            ),
            SizedBox(
              height: 30.h,
            ),
            AppButton(
              title: "Register",
            ),
            Spacer(),
            CustomText(
                text1: "Already have an account? ",
                text2: "Login Now",
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
