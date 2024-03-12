import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../feature/logic/lang/presentation/manager/lang_cubit/lang_cubit.dart';

class MainData {
  static List<BlocProvider> providers(BuildContext context) => [
        BlocProvider<LangCubit>(create: (BuildContext context) => LangCubit()),
      ];
}
