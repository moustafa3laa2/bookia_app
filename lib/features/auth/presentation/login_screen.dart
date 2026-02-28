import 'package:bookia/core/theme/app_colors.dart';
import 'package:bookia/core/theme/app_text_style.dart';
import 'package:bookia/core/widgets/app_button.dart';
import 'package:bookia/core/widgets/arrow_back_icon.dart';
import 'package:bookia/core/widgets/custom_text_form_field.dart';
import 'package:bookia/features/auth/cubit/auth_cubit.dart';
import 'package:bookia/features/auth/presentation/widgets/custom_text.dart';
import 'package:bookia/features/auth/presentation/widgets/sign_in_with_card.dart';
import 'package:bookia/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/helper/extensions.dart';
import '../../../core/routing/routes.dart';
import '../../../gen/assets.gen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool isVisible = false;
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
                LocaleKeys.welcomeBack.tr(),
                style: AppTextStyle.text30Regular,
              ),
              SizedBox(
                height: 32.h,
              ),
              CustomTextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                hintText: LocaleKeys.enterYourEmail.tr(),
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomTextFormField(
                controller: passwordController,
                obscureText: !isVisible,
                keyboardType: TextInputType.visiblePassword,
                hintText: LocaleKeys.enterYourPassword.tr(),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  child: isVisible
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              isVisible = false;
                            });
                          },
                          icon: Icon(Icons.remove_red_eye_outlined))
                      : InkWell(
                          onTap: () {
                            setState(() {
                              isVisible = true;
                            });
                          },
                          child: SvgPicture.asset(Assets.icons.hidepassword)),
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () => context.pushNamed(Routes.forgetPasswordScreen),
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
                    context.pushNamedAndRemoveUntil(Routes.homeScreen);
                  }
                },
                child: AppButton(
                  title: LocaleKeys.login.tr(),
                  onTap: () {
                    context.read<AuthCubit>().login(
                          email: emailController.text,
                          password: passwordController.text,
                        );
                  },
                ),
              ),
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
                  title: LocaleKeys.signInWithGoogle.tr(),
                  image: Assets.icons.google),
              SizedBox(
                height: 34.h,
              ),
              SignInWithCard(
                  title: LocaleKeys.signInWithApple.tr(),
                  image: Assets.icons.apple),
              Spacer(),
              CustomText(
                  onTap: () => context.pushNamed(Routes.registerScreen),
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
