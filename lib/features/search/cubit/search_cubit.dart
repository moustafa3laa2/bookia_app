import 'package:bloc/bloc.dart';
import 'package:bookia/features/search/data/repo/search_repo.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

import '../../home/data/models/book_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial()){
    _searchSubject.debounceTime(Duration(milliseconds: 500)).distinct().listen(_search);

  }

  final _searchSubject = PublishSubject<String>();
  searchAction(String text){
    _searchSubject.add(text);
  }
  void _search(String text) async {
    emit(SearchLoading());
    final response = await SearchRepo.search(text);
    if (response is BooksModel) {
      emit(SearchSuccess(response.data?.products));
    } else {
      emit(SearchError(response));
    }
  }

  @override
  Future<void> close(){
    _searchSubject.close();
    return super.close();
  }
}
