import 'package:dartz/dartz.dart';

import 'package:ultimate_task/core/error/failure.dart';
import 'package:ultimate_task/feature/logic/home/data/data_sources/home_data_source.dart';
import 'package:ultimate_task/feature/logic/home/data/models/bilI_item_model.dart';

import 'package:ultimate_task/feature/logic/home/data/models/delivery_status_types_model.dart';
import 'package:ultimate_task/feature/logic/home/data/models/services_models/delivery_bills_items_services_model.dart';

import '../../../../../core/error/exception.dart';
import '../../domain/repositories/base_home_repository.dart';

class HomeRepository extends BaseHomeRepository {
  final BaseHomeDataSource baseHomeDataSource;

  HomeRepository({required this.baseHomeDataSource});

  @override
  Future<Either<Failure, List<DeliveryStatusTypesModel>>>
      getDeliveryStatusTypes() async {
    try {
      final res = await baseHomeDataSource.getDeliveryStatusTypes();
      return Right(res);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.errorMessageModel.message));
    }
  }

  @override
  Future<Either<Failure, List<BillItemModel>>> getDeliveryBillsItems(
      {required DeliveryBillsItemsServicesModel
          billsItemsServicesModel}) async {
    try {
      final res = await baseHomeDataSource.getDeliveryBillsItems(
          billsItemsServicesModel: billsItemsServicesModel);
      return Right(res);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.errorMessageModel.message));
    }
  }
}
