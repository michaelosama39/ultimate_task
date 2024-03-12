import 'package:dartz/dartz.dart';

import '../../../../../core/error/failure.dart';
import '../../data/models/bilI_item_model.dart';
import '../../data/models/delivery_status_types_model.dart';
import '../../data/models/services_models/delivery_bills_items_services_model.dart';

abstract class BaseHomeRepository {
  Future<Either<Failure, List<DeliveryStatusTypesModel>>>
      getDeliveryStatusTypes();

  Future<Either<Failure, List<BillItemModel>>> getDeliveryBillsItems(
      {required DeliveryBillsItemsServicesModel billsItemsServicesModel});
}
