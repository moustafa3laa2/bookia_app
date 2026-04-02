import 'package:bookia/core/routing/app_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routing/routes.dart';

class BookiaApp extends StatelessWidget {
  final String? token;
  const BookiaApp({super.key, this.token});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          theme: ThemeData(fontFamily: "DMSerifDisplay"),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRouter.generateRoute,
          initialRoute: startRoute(),
        ));
  }

  String startRoute() {
    if (token == null) {
      return Routes.welcomeScreen;
    } else {

      return Routes.bottomNavBarScreen;
    }
  }
}
