import 'package:get_it/get_it.dart';
import 'package:ultimate_task/feature/auth/login/data/data_sources/login_data_source.dart';
import 'package:ultimate_task/feature/logic/home/data/data_sources/home_data_source.dart';
import 'package:ultimate_task/feature/logic/home/data/repositories/home_repository.dart';
import 'package:ultimate_task/feature/logic/home/domain/repositories/base_home_repository.dart';
import 'package:ultimate_task/feature/logic/home/domain/use_cases/get_delivery_bills_items.dart';
import 'package:ultimate_task/feature/logic/home/domain/use_cases/get_delivery_status_types.dart';
import 'package:ultimate_task/feature/logic/home/presentation/manager/home_cubit.dart';

import '../../feature/auth/login/data/repositories/login_repository.dart';
import '../../feature/auth/login/domain/repositories/base_login_repository.dart';
import '../../feature/auth/login/domain/use_cases/login.dart';
import '../../feature/auth/login/presentation/manager/login_cubit.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    // login
    sl.registerLazySingleton(() => GetDeliveryStatusTypes(sl()));
    sl.registerLazySingleton(() => GetDeliveryBillsItems(sl()));
    sl.registerFactory(() => HomeCubit(sl() , sl()));

    sl.registerLazySingleton<BaseHomeRepository>(
        () => HomeRepository(baseHomeDataSource: sl()));

    sl.registerLazySingleton<BaseHomeDataSource>(() => HomeDataSource());

    // login
    sl.registerLazySingleton(() => Login(sl()));
    sl.registerFactory(() => LoginCubit(sl()));

    sl.registerLazySingleton<BaseLoginRepository>(
        () => LoginRepository(baseLoginDataSource: sl()));

    sl.registerLazySingleton<BaseLoginDataSource>(() => LoginDataSource());
  }
}
