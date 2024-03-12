import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../res/color_manager.dart';
import '../res/text_style_manager.dart';
import '../res/values_manager.dart';
import 'custom_button_animated.dart';

class LoadingButton extends StatelessWidget {
  final GlobalKey<CustomButtonState> btnKey;
  final String title;
  final Function() onTap;
  final Color? textColor;
  final Color? color;
  final Color? borderColor;
  final double? borderRadius;
  final EdgeInsets? margin;
  final double? width;
  final double? height;
  final double? fontSize;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final Widget? startWidget;
  final Widget? endWidget;

  const LoadingButton({
    super.key,
    required this.title,
    required this.onTap,
    this.color,
    this.textColor,
    this.borderRadius,
    this.margin,
    this.borderColor,
    this.fontFamily,
    this.fontSize,
    this.width,
    this.height,
    this.fontWeight,
    required this.btnKey,
    this.startWidget,
    this.endWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.symmetric(vertical: AppMargin.mH10),
      child: Column(
        children: [
          CustomButtonAnimation(
            key: btnKey,
            onTap: onTap,
            width: width ?? MediaQuery.of(context).size.width,
            minWidth: AppSize.sW50,
            height: height ?? AppSize.sH50,
            color: color ?? ColorManager.primary,
            borderRadius: borderRadius ?? 22.r,
            loader: Container(
              padding: EdgeInsets.all(AppPadding.pH10),
              child: SpinKitFoldingCube(
                color: Colors.white,
                size: AppSize.sH20,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                startWidget ?? const SizedBox.shrink(),
                Text(
                  title,
                  style: TextStyleManager.whiteS16MediumStyle,
                ),
                endWidget ?? const SizedBox.shrink(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
