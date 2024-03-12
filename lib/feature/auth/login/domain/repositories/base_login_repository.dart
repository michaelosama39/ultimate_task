import 'package:dartz/dartz.dart';
import '../../../../../core/error/failure.dart';
import '../../data/models/services_models/login_service_model.dart';

abstract class BaseLoginRepository {
  Future<Either<Failure, String>> login({required LoginServiceModel loginServiceModel});
}
