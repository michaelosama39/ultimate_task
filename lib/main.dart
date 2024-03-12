import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ultimate_task/core/blocks/main_data.dart';
import 'package:ultimate_task/feature/settings/splash/presentation/pages/splash_screen.dart';
import 'core/app_storage/app_storage.dart';
import 'core/localization/set_localization.dart';
import 'core/res/theme_manager.dart';
import 'core/res/values_manager.dart';
import 'core/services/services_locator.dart';
import 'core/utilities/app_navigator.dart';
import 'feature/logic/lang/presentation/manager/lang_cubit/lang_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ServicesLocator().init();
  AppStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: MainData.providers(context),
      child: BlocBuilder<LangCubit, LangState>(
        builder: (context, state) {
          return ScreenUtilInit(
            designSize: Size(ScreenUtilSizes.width, ScreenUtilSizes.height),
            minTextAdapt: true,
            splitScreenMode: true,
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Ultimate Task',
              theme: getAppTheme(),
              supportedLocales: const [
                Locale('en', 'US'),
                Locale('ar', 'EG'),
              ],
              localizationsDelegates: const [
                SetLocalization.localizationsDelegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              locale: state.locale,
              navigatorKey: Go.navigatorKey,
              home: const SplashScreen(),
              // builder: (context, child) {
              //   return Directionality(
              //     textDirection: TextDirection.rtl,
              //     child: child!,
              //   );
              // },
            ),
          );
        },
      ),
    );
  }
}
