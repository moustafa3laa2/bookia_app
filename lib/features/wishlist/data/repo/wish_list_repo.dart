import 'package:bookia/core/networking/api_constants.dart';
import 'package:bookia/core/networking/dio_factory.dart';

import 'package:bookia/features/wishlist/data/models/wish_list_model.dart';

class WishListRepo {


  static Future<ShowWishlistModel?> showWishList() async{
    try{
      final response = await DioFactory.dio?.get(ApiConstants.showWishList);
      if(response?.statusCode == 200){
        return ShowWishlistModel.fromJson(response?.data);
      }else{
        return null;
      }

    }catch(error){
      return null;
    }
  }
}
