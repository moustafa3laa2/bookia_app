import 'package:bookia/core/networking/api_constants.dart';
import 'package:dio/dio.dart';

class DioFactory {
  static Dio? dio;
  static  init() {
    dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: Duration(
          seconds: 30,
        ),
        headers: {
          "Authorization" : "Bearer ${ApiConstants.token}"
        }
      ),
    );
  }
}
