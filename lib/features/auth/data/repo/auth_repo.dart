import 'package:bookia/core/networking/api_constants.dart';
import 'package:bookia/core/networking/dio_factory.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo {
  static Future<bool> login(
      {required String email, required String password}) async {
    try {
      final response = await DioFactory.dio?.post(ApiConstants.login, data: {
        "email": email,
        "password": password,
      });
      if (response?.statusCode == 200) {
        saveToken(response!.data["data"]["token"].toString());
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
      {required String userName,
      required String email,
      required String password,
      required String confirmPassword}) async {
    try {
      final response = await DioFactory.dio?.post(ApiConstants.register, data: {
        "name": userName,
        "email": email,
        "password": password,
        "password_confirmation": confirmPassword,
      });
      if (response?.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (error) {
      debugPrint(error.toString());
      return false;
    }
  }

  static saveToken(String token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }
}
