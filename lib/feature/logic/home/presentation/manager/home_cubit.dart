import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ultimate_task/core/utilities/app_navigator.dart';
import 'package:ultimate_task/feature/logic/home/domain/use_cases/get_delivery_status_types.dart';
import 'package:ultimate_task/feature/logic/lang/presentation/manager/lang_cubit/lang_cubit.dart';
import '../../../../../core/customs/custom_snack_bar.dart';
import '../../../../../core/res/enums.dart';
import '../../data/models/bilI_item_model.dart';
import '../../data/models/delivery_status_types_model.dart';
import '../../data/models/services_models/delivery_bills_items_services_model.dart';
import '../../domain/use_cases/get_delivery_bills_items.dart';

part 'home_state.dart';

enum TabStatus { newTab, othersTab }

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.statusTypesUseCase, this.getDeliveryBillsItemsUseCase)
      : super(HomeState());
  final GetDeliveryStatusTypes statusTypesUseCase;
  final GetDeliveryBillsItems getDeliveryBillsItemsUseCase;

  static HomeCubit of(context) => BlocProvider.of(context);

  late TabController tabController;
  List<DeliveryStatusTypesModel> listOfStatusTypes = [];
  DeliveryStatusTypesModel? selectedTabStatus;

  List<BillItemModel> listOfBills = [];

  initData({required TickerProvider vsync}) async {
    await _getDeliveryStatusTypes();
    tabController =
        TabController(length: listOfStatusTypes.length, vsync: vsync);
    getDeliveryBillsItems();
  }

  changeStatusOfTabBar({required DeliveryStatusTypesModel selectedTabStatus}) {
    this.selectedTabStatus = selectedTabStatus;
    int index = listOfStatusTypes.indexOf(selectedTabStatus);
    tabController.animateTo(index);
    getDeliveryBillsItems();
    emit(ChangeStatusOfTabBar());
  }

  _getDeliveryStatusTypes() async {
    emit(HomeState(homeState: RequestState.loading));
    listOfStatusTypes.clear();
    final res = await statusTypesUseCase.execute();
    res.fold(
      (failure) {
        emit(HomeState(homeState: RequestState.error));
        showSnackBar(failure.message);
      },
      (res) {
        listOfStatusTypes.addAll(res);
        selectedTabStatus = listOfStatusTypes.first;
        emit(HomeState(homeState: RequestState.success));
      },
    );
  }

  getDeliveryBillsItems() async {
    DeliveryBillsItemsServicesModel billsItemsServicesModel =
        DeliveryBillsItemsServicesModel(
            statusId:
                selectedTabStatus!.tYPNO ?? listOfStatusTypes.first.tYPNO!);

    emit(HomeState(homeState: RequestState.loading));
    listOfBills.clear();
    final res = await getDeliveryBillsItemsUseCase.execute(
        billsItemsServicesModel: billsItemsServicesModel);
    res.fold(
      (failure) {
        emit(HomeState(homeState: RequestState.error));
        showSnackBar(failure.message);
      },
      (res) {
        listOfBills.addAll(res);
        emit(HomeState(homeState: RequestState.success));
      },
    );
  }

  changeLangFun(BuildContext context, LangEnum value) {
    String lang = value == LangEnum.ar ? 'ar' : 'en';
    context.read<LangCubit>().onUpdateLanguage(lang);
    _getDeliveryStatusTypes();
    getDeliveryBillsItems();
    Go.back();
  }
}
