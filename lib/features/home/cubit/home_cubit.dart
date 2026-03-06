import 'package:bookia/features/home/data/models/book_model.dart';
import 'package:bookia/features/home/data/models/slider_model.dart';
import 'package:bookia/features/home/data/repo/home_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  Future<void> getHomeData()async{
    await Future.wait([getSliders(),getBestSellerBooks()]);
  }

  Future<void> getSliders() async{
    emit(GetHomeSlidersLoading());
    final response = await HomeRepo.getHomeSliders();
    if(response is SliderModel){
      emit(GetHomeSlidersSuccess(response.data?.sliders??[]));
    }else{
      emit(GetHomeSlidersError());
    }
  }

  Future<void> getBestSellerBooks() async{
    emit(GetHomeBooksLoading());
    final response = await HomeRepo.getBestSellerBooks();
    if(response is BooksModel){
     emit(GetHomeBooksSuccess(response.data?.products??[]));
    }else{
      emit(GetHomeBooksError());
    }
  }

}
