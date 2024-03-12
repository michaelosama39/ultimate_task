import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilities/app_navigator.dart';

class AppMargin {
  // VALUES FOR HEIGHT
  static double mH1 = 1.0.h;
  static double mH4 = 4.0.h;
  static double mH5 = 5.0.h;
  static double mH8 = 8.0.h;
  static double mH10 = 10.0.h;
  static double mH12 = 12.0.h;
  static double mH14 = 14.0.h;
  static double mH16 = 16.0.h;
  static double mH18 = 18.0.h;
  static double mH20 = 20.0.h;

  // VALUES FOR WIDTH
  static double mW1 = 1.0.w;
  static double mW3 = 3.0.w;
  static double mW5 = 5.0.w;
  static double mW8 = 8.0.w;
  static double mW10 = 10.0.w;
  static double mW12 = 12.0.w;
  static double mW14 = 14.0.w;
  static double mW16 = 16.0.w;
  static double mW18 = 18.0.w;
  static double mW20 = 20.0.w;
}

class AppPadding {
  // VALUES FOR HEIGHT
  static double pH3 = 3.0.h;
  static double pH4 = 4.0.h;
  static double pH5 = 5.0.h;
  static double pH8 = 8.0.h;
  static double pH6 = 6.0.h;
  static double pH10 = 10.0.h;
  static double pH12 = 12.0.h;
  static double pH14 = 14.0.h;
  static double pH16 = 16.0.h;
  static double pH18 = 18.0.h;
  static double pH20 = 20.0.h;
  static double pH25 = 25.0.h;

  // VALUES FOR WIDTH
  static double pW3 = 3.0.w;
  static double pW5 = 5.0.w;
  static double pW8 = 8.0.w;
  static double pW10 = 10.0.w;
  static double pW12 = 12.0.w;
  static double pW14 = 14.0.w;
  static double pW15 = 15.0.w;
  static double pW16 = 16.0.w;
  static double pW18 = 18.0.w;
  static double pW20 = 20.0.w;
  static double pW26 = 26.0.w;

  static EdgeInsetsGeometry pagePadding =
      EdgeInsets.symmetric(horizontal: pW16, vertical: pH16);
}

class AppSize {
  // VALUES FOR HEIGHT
  static double sH0 = 0.0.h;
  static double sH1 = 1.0.h;
  static double sH2 = 2.0.h;
  static double sH3 = 3.0.h;
  static double sH4 = 4.0.h;
  static double sH5 = 5.0.h;
  static double sH6 = 6.0.h;
  static double sH7 = 7.0.h;
  static double sH8 = 8.0.h;
  static double sH10 = 10.0.h;
  static double sH12 = 12.0.h;
  static double sH15 = 15.0.h;
  static double sH16 = 16.0.h;
  static double sH18 = 18.0.h;
  static double sH20 = 20.0.h;
  static double sH24 = 24.0.h;
  static double sH27 = 27.0.h;
  static double sH30 = 30.0.h;
  static double sH36 = 36.0.h;
  static double sH40 = 40.0.h;
  static double sH44 = 44.0.h;
  static double sH50 = 50.0.h;
  static double sH60 = 60.0.h;
  static double sH70 = 70.0.h;
  static double sH90 = 90.0.h;
  static double sH100 = 100.h;
  static double sH110 = 110.0.h;
  static double sH130 = 130.0.h;
  static double sH150 = 150.0.h;
  static double sH170 = 170.0.h;
  static double sH180 = 180.0.h;
  static double sH200 = 200.0.h;
  static double sH300 = 300.0.h;
  static double sH500 = 500.0.h;

  // VALUES FOR WIDTH
  static double sW0 = 0.0.w;
  static double sW1 = 1.0.w;
  static double sW2 = 2.0.w;
  static double sW4 = 4.0.w;
  static double sW5 = 5.0.w;
  static double sW6 = 6.0.w;
  static double sW8 = 8.0.w;
  static double sW10 = 10.0.w;
  static double sW12 = 12.0.w;
  static double sW15 = 15.0.w;
  static double sW20 = 20.0.w;
  static double sW30 = 30.0.w;
  static double sW40 = 40.0.w;
  static double sW44 = 44.0.w;
  static double sW50 = 50.0.w;
  static double sW100 = 100.0.w;
  static double sW120 = 120.0.w;
  static double sW130 = 130.0.w;
  static double sW150 = 150.0.w;
  static double sW160 = 160.0.w;
  static double sW170 = 170.0.w;
  static double sW195 = 195.0.w;
  static double sW200 = 200.0.w;
  static double sW220 = 220.0.w;
  static double sW270 = 270.0.w;
}

class AppRadius {
  static double bR3 = 3.0.r;
  static double bR5 = 5.0.r;
  static double bR6 = 6.0.r;
  static double bR7 = 7.0.r;
  static double bR8 = 8.0.r;
  static double bR10 = 10.0.r;
  static double bR15 = 15.0.r;
  static double bR16 = 16.0.r;
  static double bR20 = 20.0.r;
  static double bR30 = 30.0.r;
}

class ScreenSizes {
  static double width =
      MediaQuery.of(Go.navigatorKey.currentState!.context).size.width;
  static double height =
      MediaQuery.of(Go.navigatorKey.currentState!.context).size.height;
}

class ScreenUtilSizes {
  static double width = 375;
  static double height = 812;
}
