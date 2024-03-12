import 'package:dio/dio.dart';
import 'api_names.dart';
import 'logger_interceptor.dart';

class DioHelper {
  static Dio dioSingleton = Dio()
    ..options = BaseOptions(baseUrl: ApiNames.baseUrl)
    ..interceptors.add(LoggerInterceptor());

  static Future<Response<dynamic>> post({
    required String path,
    FormData? formData,
    Map<String, dynamic>? body,
    Map<String, dynamic> headers = const {},
  }) {
    dioSingleton.options.headers.addAll(headers);
    return dioSingleton.post(path,
        data: formData ?? body,
        options: Options(
          validateStatus: (_) => true,
          contentType: Headers.jsonContentType,
          responseType: ResponseType.json,
        ));
  }

  static Future<Response<dynamic>> get(
    String path, {
    Map<String, dynamic> headers = const {},
  }) {
    dioSingleton.options.headers.addAll(headers);
    return dioSingleton.get(path);
  }
}
