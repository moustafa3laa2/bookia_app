import 'package:bookia/features/welcome/presentation/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookiaApp extends StatelessWidget {
  const BookiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          theme: ThemeData(fontFamily: "DMSerifDisplay"),
          debugShowCheckedModeBanner: false,
          home: WelcomeScreen(),
        ));
  }
}
