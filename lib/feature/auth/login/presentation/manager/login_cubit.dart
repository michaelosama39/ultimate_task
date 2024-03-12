import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ultimate_task/core/app_storage/app_storage.dart';
import 'package:ultimate_task/core/utilities/app_navigator.dart';
import 'package:ultimate_task/feature/logic/home/presentation/pages/home_screen.dart';
import '../../../../../core/customs/custom_button_animated.dart';
import '../../../../../core/customs/custom_snack_bar.dart';
import '../../../../../core/res/enums.dart';
import '../../data/models/services_models/login_service_model.dart';
import '../../domain/use_cases/login.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginUseCase) : super(LoginState());

  static LoginCubit of(context) => BlocProvider.of(context);
  final Login loginUseCase;

  final formKey = GlobalKey<FormState>();
  final btnKey = GlobalKey<CustomButtonState>();

  final userIdController = TextEditingController();
  final passwordController = TextEditingController();

  Future login() async {
    if (formKey.currentState!.validate()) {
      LoginServiceModel loginServiceModel = LoginServiceModel(
        userId: userIdController.text,
        password: passwordController.text,
      );
      emit(LoginState(loginState: RequestState.loading));
      btnKey.currentState!.animateForward();
      final res =
          await loginUseCase.execute(loginServiceModel: loginServiceModel);
      btnKey.currentState!.animateReverse();
      res.fold(
        (failure) {
          emit(LoginState(loginState: RequestState.error));
          showSnackBar(failure.message);
        },
        (res) {
          emit(LoginState(loginState: RequestState.success, nameUser: res));
          AppStorage.cacheUserId(userIdController.text);
          AppStorage.cacheUserName(res);
          Go.to(const HomeScreen());
        },
      );
    }
  }
}
