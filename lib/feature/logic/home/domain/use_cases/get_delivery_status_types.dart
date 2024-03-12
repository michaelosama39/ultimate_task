import 'package:dartz/dartz.dart';

import '../../../../../core/error/failure.dart';
import '../../data/models/delivery_status_types_model.dart';
import '../repositories/base_home_repository.dart';

class GetDeliveryStatusTypes {
  final BaseHomeRepository baseHomeRepository;

  GetDeliveryStatusTypes(this.baseHomeRepository);

  Future<Either<Failure, List<DeliveryStatusTypesModel>>> execute() async {
    return await baseHomeRepository.getDeliveryStatusTypes();
  }
}
