import 'package:bookia/core/networking/api_constants.dart';
import 'package:bookia/features/book_details/data/models/show_book_details_model.dart';

import '../../../../core/networking/dio_factory.dart';

class ShowBookDetailsRepo {

  static Future<ShowBookDetailsModel?>? showBookDetails(int bookId)async{
    try{
      final response = await DioFactory.dio?.get("${ApiConstants.showBookDetails}/$bookId");
      if(response?.statusCode == 200){
        return ShowBookDetailsModel.fromJson(response?.data);
      }else{return null;}
    }catch(error){
      return null;
    }

  }

}