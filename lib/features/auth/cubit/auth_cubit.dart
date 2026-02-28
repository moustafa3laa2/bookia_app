import 'package:bookia/features/auth/data/repo/auth_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  void login({required String email, required String password}) async {
    emit(AuthLoadingState());
    final response = await AuthRepo.login(email: email, password: password);
    if (response) {
      emit(AuthSuccessState());
    } else {
      emit(AuthErrorState());
    }
  }
  void register({required String userName, required String email,required String password,required String confirmPassword}) async {
    emit(AuthLoadingState());
    final response = await AuthRepo.register(userName: userName, email: email, password: password, confirmPassword: confirmPassword);
    if (response) {
      emit(AuthSuccessState());
    } else {
      emit(AuthErrorState());
    }
  }
}
