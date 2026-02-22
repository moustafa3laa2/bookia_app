import 'package:bookia/bookia_app.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.wait([
    EasyLocalization.ensureInitialized(),
    ScreenUtil.ensureScreenSize(),
  ]);
  runApp(
    //dart run easy_localization:generate --source-dir ./assets/translations -f keys -o locale_keys.g.dart -O lib/gen
    //dart run build_runner build
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: Locale('en'),
      child: BookiaApp(),
    ),
  );
}
