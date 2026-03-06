import 'package:bookia/core/networking/api_constants.dart';
import 'package:bookia/core/networking/dio_factory.dart';
import 'package:bookia/features/home/data/models/book_model.dart';
import 'package:bookia/features/home/data/models/slider_model.dart';

class HomeRepo {
  static Future<SliderModel?> getHomeSliders() async {
    try {
      final response = await DioFactory.dio?.get(ApiConstants.sliders);
      if (response?.statusCode == 200) {
        return SliderModel.fromJson(response?.data);
      } else {
        return null;
      }
    } catch (error) {
      return null;
    }
  }

static Future<BooksModel?> getBestSellerBooks() async{
    try{
      final response = await DioFactory.dio?.get(ApiConstants.bestSeller);
      if(response?.statusCode == 200){
        return BooksModel.fromJson(response?.data);
      }else{
        return null;
      }

    }catch(error){
      return null;
    }
}
}
