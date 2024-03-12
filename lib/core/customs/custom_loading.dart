// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../res/color_manager.dart';
import '../res/values_manager.dart';

class CustomLoading {
  static showLoadingView() {
    return Center(
      child: SpinKitDoubleBounce(
        color: ColorManager.primary,
        size: AppSize.sH40,
      ),
    );
  }

  static showLoadingDialog() {
    EasyLoading.show(
        indicator: SizedBox(
          height: AppSize.sH44,
          width: AppSize.sH44,
          child: SpinKitFadingCircle(color: ColorManager.primary),
        ),
        dismissOnTap: true,
        maskType: EasyLoadingMaskType.black,
        status: "Loading");
  }

  static dismissLoading({Color? color}) {
    return EasyLoading.dismiss();
  }
}
