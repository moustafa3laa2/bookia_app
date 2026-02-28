import 'package:bookia/core/routing/routes.dart';
import 'package:bookia/features/auth/cubit/auth_cubit.dart';
import 'package:bookia/features/auth/presentation/create_new_password_screen.dart';
import 'package:bookia/features/auth/presentation/forget_password_screen.dart';
import 'package:bookia/features/auth/presentation/login_screen.dart';
import 'package:bookia/features/auth/presentation/otp_verification_screen.dart';
import 'package:bookia/features/auth/presentation/password_changed_screen.dart';
import 'package:bookia/features/auth/presentation/register_screen.dart';
import 'package:bookia/features/home/presentation/home_screen.dart';
import 'package:bookia/features/welcome/presentation/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.welcomeScreen:
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => AuthCubit(),
                  child: LoginScreen(),
                ));
      case Routes.registerScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => AuthCubit(),
                  child: RegisterScreen(),
                ));
      case Routes.createNewPasswordScreen:
        return MaterialPageRoute(builder: (_) => CreateNewPasswordScreen());
      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(builder: (_) => ForgetPasswordScreen());
      case Routes.otpVerificationScreen:
        return MaterialPageRoute(builder: (_) => OtpVerificationScreen());
      case Routes.passwordChangedScreen:
        return MaterialPageRoute(builder: (_) => PasswordChangedScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text("Not Found"),
                  ),
                ));
    }
  }
}
