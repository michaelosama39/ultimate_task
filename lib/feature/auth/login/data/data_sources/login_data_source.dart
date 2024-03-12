import '../../../../../core/dio_helper/api_names.dart';
import '../../../../../core/dio_helper/dio_helper.dart';
import '../../../../../core/error/error_message_model.dart';
import '../../../../../core/error/exception.dart';
import '../models/services_models/login_service_model.dart';

abstract class BaseLoginDataSource {
  Future<String> login({required LoginServiceModel loginServiceModel});
}

class LoginDataSource extends BaseLoginDataSource {
  @override
  Future<String> login(
      {required LoginServiceModel loginServiceModel}) async {
    final response = await DioHelper.post(
      path: ApiNames.login,
      body: loginServiceModel.toJson(),
    );
    if (response.statusCode == 200 && response.data['Result']['ErrNo'] == 0) {
      return response.data['Data']['DeliveryName'];
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data['Result']),
      );
    }
  }
}
