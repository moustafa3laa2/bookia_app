import 'package:bookia/core/theme/app_colors.dart';
import 'package:bookia/core/theme/app_text_style.dart';
import 'package:bookia/core/widgets/app_button.dart';
import 'package:bookia/features/auth/presentation/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../gen/assets.gen.dart';

class PasswordChangedScreen extends StatelessWidget {
  const PasswordChangedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.icons.successmark),
            SizedBox(
              height: 35.h,
            ),
            Text("Password Changed!", style: AppTextStyle.text26Regular),
            Text("Your password has been changed successfully.",
                style: AppTextStyle.text15Regular
                    .copyWith(color: AppColors.darkGrayColor)),
            SizedBox(
              height: 40.h,
            ),
            AppButton(
              title: "Back to Login",
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen())),
            )
          ],
        ),
      ),
    );
  }
}
