import 'package:bookia/core/networking/api_constants.dart';
import 'package:bookia/core/networking/dio_factory.dart';
import 'package:bookia/features/cart/data/models/show_cart_model.dart';

class CartRepo {
  static Future<dynamic> addToCart(int bookId) async {
    try {
      final response = await DioFactory.dio
          ?.post(ApiConstants.addToCart, data: {"product_id": bookId});
      if (response?.statusCode == 201) {
        return response?.data["message"];
      } else {
        return false;
      }
    } catch (error) {
      return false;
    }
  }

  static Future<ShowCartModel?> showCart() async {
    try {
      final response = await DioFactory.dio?.get(ApiConstants.showCart);
      if (response?.statusCode == 200) {
        return ShowCartModel.fromJson(response!.data);
      } else {
        return null;
      }
    } catch (error) {
      return null;
    }
  }
}
