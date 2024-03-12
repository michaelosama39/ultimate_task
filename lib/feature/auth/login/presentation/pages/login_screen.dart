import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ultimate_task/feature/auth/login/presentation/manager/login_cubit.dart';
import 'package:ultimate_task/feature/auth/login/presentation/widgets/login_imports.dart';

import '../../../../../core/services/services_locator.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => LoginCubit(sl()),
      child: const Scaffold(
        body: LoginBody(),
      ),
    );
  }
}
