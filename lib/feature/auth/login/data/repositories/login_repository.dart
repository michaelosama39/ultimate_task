import 'package:dartz/dartz.dart';

import 'package:ultimate_task/core/error/failure.dart';
import 'package:ultimate_task/feature/auth/login/data/data_sources/login_data_source.dart';

import '../../../../../core/error/exception.dart';
import '../../domain/repositories/base_login_repository.dart';
import '../models/services_models/login_service_model.dart';

class LoginRepository extends BaseLoginRepository {
  final BaseLoginDataSource baseLoginDataSource;

  LoginRepository({required this.baseLoginDataSource});

  @override
  Future<Either<Failure, String>> login(
      {required LoginServiceModel loginServiceModel}) async {
    try {
      final res =
          await baseLoginDataSource.login(loginServiceModel: loginServiceModel);
      return Right(res);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.errorMessageModel.message));
    }
  }
}
