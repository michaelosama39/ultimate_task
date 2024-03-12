import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ultimate_task/feature/logic/home/data/models/bilI_item_model.dart';
import 'package:ultimate_task/feature/logic/home/data/models/delivery_status_types_model.dart';

import '../../../../../core/dio_helper/api_names.dart';
import '../../../../../core/dio_helper/dio_helper.dart';
import '../../../../../core/error/error_message_model.dart';
import '../../../../../core/error/exception.dart';
import '../../../../../core/utilities/app_navigator.dart';
import '../../../lang/presentation/manager/lang_cubit/lang_cubit.dart';
import '../models/services_models/delivery_bills_items_services_model.dart';

abstract class BaseHomeDataSource {
  Future<List<DeliveryStatusTypesModel>> getDeliveryStatusTypes();

  Future<List<BillItemModel>> getDeliveryBillsItems(
      {required DeliveryBillsItemsServicesModel billsItemsServicesModel});
}

class HomeDataSource extends BaseHomeDataSource {
  @override
  Future<List<DeliveryStatusTypesModel>> getDeliveryStatusTypes() async {
    BuildContext context = Go.navigatorKey.currentContext!;
    final response = await DioHelper.post(
      path: ApiNames.getDeliveryStatusTypes,
      body: {
        "Value": {
          "P_LANG_NO":
              context.read<LangCubit>().state.locale.languageCode == 'en'
                  ? 2
                  : 1,
        }
      },
    );
    if (response.statusCode == 200 && response.data['Result']['ErrNo'] == 0) {
      List<DeliveryStatusTypesModel> list = [];
      for (var element in response.data['Data']['DeliveryStatusTypes']) {
        list.add(DeliveryStatusTypesModel.fromJson(element));
      }
      return list;
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data['Result']),
      );
    }
  }

  @override
  Future<List<BillItemModel>> getDeliveryBillsItems(
      {required DeliveryBillsItemsServicesModel
          billsItemsServicesModel}) async {
    final response = await DioHelper.post(
      path: ApiNames.getDeliveryBillsItems,
      body: billsItemsServicesModel.toJson(),
    );
    if (response.statusCode == 200 && response.data['Result']['ErrNo'] == 0) {
      List<BillItemModel> list = [];
      for (var element in response.data['Data']['DeliveryBills']) {
        list.add(BillItemModel.fromJson(element));
      }
      return list;
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data['Result']),
      );
    }
  }
}
