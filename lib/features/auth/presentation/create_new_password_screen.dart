import 'package:bookia/features/auth/presentation/password_changed_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_style.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/arrow_back_icon.dart';
import '../../../core/widgets/custom_text_form_field.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

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
            "Create new password",
            style: AppTextStyle.text30Regular,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Your new password must be unique from those previously used.",
            style: AppTextStyle.text15Regular
                .copyWith(color: AppColors.darkGrayColor),
          ),
          SizedBox(
            height: 32.h,
          ),
          CustomTextFormField(hintText: "New Password"),
          SizedBox(
            height: 15.h,
          ),
          CustomTextFormField(hintText: "Confirm Password"),
          SizedBox(
            height: 38.h,
          ),
          AppButton(
            title: "Reset Password",
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PasswordChangedScreen())),
          ),
        ]),
      ),
    ));
  }
}
