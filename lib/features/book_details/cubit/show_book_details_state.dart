part of 'show_book_details_cubit.dart';

@immutable
sealed class ShowBookDetailsState {}

final class ShowBookDetailsInitial extends ShowBookDetailsState {}

final class ShowBookDetailsLoading extends ShowBookDetailsState {}

final class ShowBookDetailsSuccess extends ShowBookDetailsState {
  final ShowBookDetailsModel model;

  ShowBookDetailsSuccess(this.model);
}

final class ShowBookDetailsError extends ShowBookDetailsState {
  final String message;

  ShowBookDetailsError(this.message);
}
