import 'package:dartz/dartz.dart';
import 'package:ultimate_task/feature/auth/login/domain/repositories/base_login_repository.dart';
import '../../../../../core/error/failure.dart';
import '../../data/models/services_models/login_service_model.dart';

class Login {
  final BaseLoginRepository baseLoginRepository;

  Login(this.baseLoginRepository);

  Future<Either<Failure, String>> execute(
      {required LoginServiceModel loginServiceModel}) async {
    return await baseLoginRepository.login(
        loginServiceModel: loginServiceModel);
  }
}
