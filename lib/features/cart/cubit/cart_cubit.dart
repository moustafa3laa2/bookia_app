import 'package:bloc/bloc.dart';
import 'package:bookia/features/cart/data/models/show_cart_model.dart';
import 'package:meta/meta.dart';

import '../data/repo/cart_repo.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  Future<void> getCart() async {
    emit(CartLoading());

    final cart = await CartRepo.showCart();
    if (cart != null) {
      emit(CartSuccess(cart));
    } else {
      emit(CartError("Failed to load cart"));
    }
  }
}
