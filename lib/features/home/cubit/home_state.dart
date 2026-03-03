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
