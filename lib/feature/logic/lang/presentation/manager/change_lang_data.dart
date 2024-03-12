import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ultimate_task/core/utilities/app_navigator.dart';
import 'package:ultimate_task/feature/logic/lang/presentation/manager/lang_cubit/lang_cubit.dart';

import '../../../../../core/res/enums.dart';

class ChangeLangData {
  final ValueNotifier<LangEnum?> lang = ValueNotifier(null);

  ChangeLangData() {
    BuildContext context = Go.navigatorKey.currentContext!;
    lang.value = context.read<LangCubit>().state.locale.languageCode == "en"
        ? LangEnum.en
        : LangEnum.ar;
  }

  changeLang(LangEnum langEnum) {
    lang.value = langEnum;
  }
}
