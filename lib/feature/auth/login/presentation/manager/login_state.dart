part of 'login_cubit.dart';

class LoginState {
  final String? nameUser;
  final RequestState loginState;
  final String message;

  LoginState({
    this.nameUser,
    this.loginState = RequestState.initial,
    this.message = '',
  });
}
