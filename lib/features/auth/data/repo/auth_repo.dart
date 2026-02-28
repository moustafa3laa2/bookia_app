import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import '../../../../core/app_constant.dart';

class AuthRepo {
  static final Dio _dio = Dio();
  static Future<bool> login(
      {required String email, required String password}) async {
    try {
      final response = await _dio.post("${AppConstant.baseUrl}/login", data: {
        "email": email,
        "password": password,
      });
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (error) {
      debugPrint(error.toString());
      return false;
    }
  }


  static Future<bool> register(
      {required String userName, required String email,required String password,required String confirmPassword}) async {
    try {
      final response = await _dio.post("${AppConstant.baseUrl}/login", data: {
        "name": userName,
        "email": email,
        "password": password,
        "password_confirmation": confirmPassword,
      });
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (error) {
      debugPrint(error.toString());
      return false;
    }
  }
}
