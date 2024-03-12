import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ultimate_task/core/app_storage/app_storage.dart';

import '../../../../../../core/utilities/app_navigator.dart';
import '../../../../lang/presentation/manager/lang_cubit/lang_cubit.dart';

class DeliveryBillsItemsServicesModel {
  final String statusId;

  DeliveryBillsItemsServicesModel({required this.statusId});

  Map<String, dynamic> toJson() {
    BuildContext context = Go.navigatorKey.currentContext!;
    return {
      "Value": {
        "P_DLVRY_NO": AppStorage.getUserIdInfo.toString(),
        "P_LANG_NO":
            context.read<LangCubit>().state.locale.languageCode == 'en' ? 2 : 1,
        "P_BILL_SRL": "",
        "P_PRCSSD_FLG": statusId,
      }
    };
  }
}
