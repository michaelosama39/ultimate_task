import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:ultimate_task/core/utilities/app_navigator.dart';
import 'package:ultimate_task/feature/auth/login/presentation/pages/login_screen.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  static SplashCubit of(context) => BlocProvider.of(context);

  splashTimer() {
    Timer(const Duration(seconds: 2), () {
      Go.to(const LoginScreen());
    });
  }
}
