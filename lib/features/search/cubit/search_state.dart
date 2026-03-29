part of 'search_cubit.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}
final class SearchLoading extends SearchState {}
final class SearchSuccess extends SearchState {
 final List<Book>? books;

  SearchSuccess(this.books);

}
final class SearchError extends SearchState {
  final String errorMessage;

  SearchError(this.errorMessage);
}
