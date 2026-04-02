import 'package:bloc/bloc.dart';
import 'package:bookia/features/book_details/data/models/show_book_details_model.dart';
import 'package:bookia/features/book_details/data/repo/show_book_details_repo.dart';
import 'package:meta/meta.dart';

part 'show_book_details_state.dart';

class ShowBookDetailsCubit extends Cubit<ShowBookDetailsState> {
  ShowBookDetailsCubit() : super(ShowBookDetailsInitial());

  Future<void> getBookDetails(int bookId) async {
    emit(ShowBookDetailsLoading());

    final response = await ShowBookDetailsRepo.showBookDetails(bookId);

    if (response is ShowBookDetailsModel) {
      emit(ShowBookDetailsSuccess(response));
    } else {
      emit(ShowBookDetailsError("Failed to load book details"));
    }
  }
}

