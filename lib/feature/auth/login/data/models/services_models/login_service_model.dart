import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utilities/app_navigator.dart';
import '../../../../../logic/lang/presentation/manager/lang_cubit/lang_cubit.dart';

class LoginServiceModel {
  final String userId;
  final String password;

  LoginServiceModel({required this.userId, required this.password});

  Map<String, dynamic> toJson() {
    BuildContext context = Go.navigatorKey.currentContext!;
    return {
      "Value": {
        "P_LANG_NO":
            context.read<LangCubit>().state.locale.languageCode == 'en' ? 2 : 1,
        "P_DLVRY_NO": userId,
        "P_PSSWRD": password,
      }
    };
  }
}
