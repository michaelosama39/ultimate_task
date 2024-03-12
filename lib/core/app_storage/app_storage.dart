import 'package:get_storage/get_storage.dart';
import 'package:ultimate_task/core/utilities/app_navigator.dart';
import '../../feature/auth/login/presentation/pages/login_screen.dart';

abstract class AppStorage {
  static final GetStorage _box = GetStorage();

  static Future<void> init() async => await GetStorage.init();

  static Future<void> cacheUserId(String userId) =>
      _box.write('userId', userId);

  static Future<void> cacheUserName(String userName) =>
      _box.write('userName', userName);

  static String? get getUserId {
    if (_box.hasData('userId')) return _box.read('userId');
    return null;
  }

  static String? get getUserName {
    if (_box.hasData('userName')) return _box.read('userName');
    return null;
  }

  static String get getUserIdInfo => getUserId!;

  static String get getUserNameInfo => getUserName!;

  static Future<void> signOut() async {
    await _box.erase();
    Go.offAll(const LoginScreen());
  }
}
