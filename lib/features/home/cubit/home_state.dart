part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class GetHomeSlidersLoading extends HomeState {}

final class GetHomeSlidersSuccess extends HomeState {
  final List<SliderItem> sliders;
  GetHomeSlidersSuccess(this.sliders);
}
final class GetHomeSlidersError extends HomeState {}


final class GetHomeBooksLoading extends HomeState {}

final class GetHomeBooksSuccess extends HomeState {
  final List<Book>? books;
  GetHomeBooksSuccess(this.books);
}
final class GetHomeBooksError extends HomeState {}

final class AddToCartLoading extends HomeState {}
final class AddToCartSuccess extends HomeState {
  final String message;

  AddToCartSuccess(this.message);
}
final class AddToCartError extends HomeState {}
