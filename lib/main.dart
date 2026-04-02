import 'package:bookia/bookia_app.dart';
import 'package:bookia/core/networking/api_constants.dart';
import 'package:bookia/core/networking/dio_factory.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/helper/bloc_observer.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  ApiConstants.token = prefs.getString("token");
  DioFactory.init();
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
      child: BookiaApp(
        token: ApiConstants.token,
      ),
    ),
  );
}
