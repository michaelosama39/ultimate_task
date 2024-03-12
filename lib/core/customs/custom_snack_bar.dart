import 'package:flutter/material.dart';
import '../res/color_manager.dart';
import '../res/text_style_manager.dart';
import '../utilities/app_navigator.dart';

void showSnackBar(String message, {Color? backgroundColor}) {
  final snackBar = SnackBar(
    duration: const Duration(seconds: 2),
    content: Text(message, style: TextStyleManager.snackBarStyle),
    backgroundColor: backgroundColor ?? ColorManager.black.withOpacity(.5),
    behavior: SnackBarBehavior.floating,
    elevation: 4,
    action: SnackBarAction(
      label: 'cancele',
      disabledTextColor: Colors.white,
      textColor: Colors.white,
      onPressed: () => ScaffoldMessenger.of(Go.navigatorKey.currentContext!)
          .clearSnackBars(),
    ),
  );
  ScaffoldMessenger.of(Go.navigatorKey.currentContext!).showSnackBar(snackBar);
}
