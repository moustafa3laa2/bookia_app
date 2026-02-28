import 'package:bookia/core/helper/extensions.dart';
import 'package:bookia/core/widgets/app_button.dart';
import 'package:bookia/core/widgets/arrow_back_icon.dart';
import 'package:bookia/core/widgets/custom_text_form_field.dart';
import 'package:bookia/features/auth/cubit/auth_cubit.dart';
import 'package:bookia/features/auth/presentation/widgets/custom_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_style.dart';
import '../../../gen/locale_keys.g.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var userNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
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
              controller: userNameController,
              hintText: LocaleKeys.userName.tr(),
            ),
            SizedBox(
              height: 11.h,
            ),
            CustomTextFormField(
              controller: emailController,
              hintText: LocaleKeys.email.tr(),
            ),
            SizedBox(
              height: 11.h,
            ),
            CustomTextFormField(
              controller: passwordController,
              hintText: LocaleKeys.password.tr(),
            ),
            SizedBox(
              height: 11.h,
            ),
            CustomTextFormField(
              controller: confirmPasswordController,
              hintText: LocaleKeys.confirmPassword.tr(),
            ),
            SizedBox(
              height: 30.h,
            ),
            BlocListener<AuthCubit, AuthState>(
              listener: (context, state) {
                if (state is AuthLoadingState) {
                  showDialog(
                      context: context,
                      builder: (context) => Center(
                            child: CircularProgressIndicator(
                              color: AppColors.mainColor,
                            ),
                          ),
                      barrierDismissible: false);
                } else if (state is AuthErrorState) {
                  context.pop();
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text(
                              "ERROR !",
                              style: AppTextStyle.text20Regular,
                            ),
                            content: Text(
                              "some thing wrong please try again",
                              style: AppTextStyle.text18Regular,
                            ),
                          ));
                } else if (state is AuthSuccessState) {
                  context.pushNamedAndRemoveUntil(Routes.loginScreen);
                }
              },
              child: AppButton(
                  title: LocaleKeys.register.tr(),
                  onTap: () {
                    context.read<AuthCubit>().register(
                        userName: userNameController.text,
                        email: emailController.text,
                        password: passwordController.text,
                        confirmPassword: confirmPasswordController.text);
                  }),
            ),
            Spacer(),
            CustomText(
              text1: LocaleKeys.alreadyHaveAccount.tr(),
              text2: LocaleKeys.loginNow.tr(),
              onTap: () => context.pushNamed(Routes.loginScreen),
            ),
            SizedBox(
              height: 27.h,
            ),
          ],
        ),
      )),
    );
  }
}
