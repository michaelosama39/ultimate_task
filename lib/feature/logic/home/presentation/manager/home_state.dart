part of 'home_cubit.dart';

class HomeState {
  final List<DeliveryStatusTypesModel>? deliveryStatusTypes;
  final RequestState homeState;
  final String message;

  HomeState({
    this.deliveryStatusTypes,
    this.homeState = RequestState.initial,
    this.message = '',
  });
}

class ChangeStatusOfTabBar extends HomeState {}
