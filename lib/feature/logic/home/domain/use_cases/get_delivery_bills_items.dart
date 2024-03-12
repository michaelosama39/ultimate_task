import 'package:dartz/dartz.dart';

import '../../../../../core/error/failure.dart';
import '../../data/models/bilI_item_model.dart';
import '../../data/models/services_models/delivery_bills_items_services_model.dart';
import '../repositories/base_home_repository.dart';

class GetDeliveryBillsItems {
  final BaseHomeRepository baseHomeRepository;

  GetDeliveryBillsItems(this.baseHomeRepository);

  Future<Either<Failure, List<BillItemModel>>> execute(
      {required DeliveryBillsItemsServicesModel
          billsItemsServicesModel}) async {
    return await baseHomeRepository.getDeliveryBillsItems(
        billsItemsServicesModel: billsItemsServicesModel);
  }
}
